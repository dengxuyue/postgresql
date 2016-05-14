\set VERBOSITY terse
set client_min_messages to ERROR;

INSERT INTO spatial_ref_sys ( auth_name, auth_srid, srid, proj4text ) VALUES ( 'EPSG', 4326, 4326, '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs' );

\i load_topology-4326.sql

-- Save max node id
select 'node'::text as what, max(node_id) INTO city_data.limits FROM city_data.node;
INSERT INTO city_data.limits select 'edge'::text as what, max(edge_id) FROM city_data.edge;
SELECT 'max',* from city_data.limits;

-- Check changes since last saving, save more
-- {
CREATE OR REPLACE FUNCTION check_changes()
RETURNS TABLE (o text)
AS $$
DECLARE
  rec RECORD;
  sql text;
BEGIN
  -- Check effect on nodes
  sql := 'SELECT n.node_id, ''N|'' || n.node_id || ''|'' ||
        COALESCE(n.containing_face::text,'''') || ''|'' ||
        ST_AsText(ST_SnapToGrid(n.geom, 0.2))::text as xx
  	FROM city_data.node n WHERE n.node_id > (
    		SELECT max FROM city_data.limits WHERE what = ''node''::text )
  		ORDER BY n.node_id';

  FOR rec IN EXECUTE sql LOOP
    o := rec.xx;
    RETURN NEXT;
  END LOOP;
  
  -- Check effect on edges (there should be one split)
  sql := '
  WITH node_limits AS ( SELECT max FROM city_data.limits WHERE what = ''node''::text ),
       edge_limits AS ( SELECT max FROM city_data.limits WHERE what = ''edge''::text )
  SELECT ''E|'' || e.edge_id || ''|sn'' || e.start_node || ''|en'' || e.end_node :: text as xx
   FROM city_data.edge e, node_limits nl, edge_limits el
   WHERE e.start_node > nl.max
      OR e.end_node > nl.max
      OR e.edge_id > el.max
  ORDER BY e.edge_id;
  ';

  FOR rec IN EXECUTE sql LOOP
    o := rec.xx;
    RETURN NEXT;
  END LOOP;

  UPDATE city_data.limits SET max = (SELECT max(n.node_id) FROM city_data.node n) WHERE what = 'node';
  UPDATE city_data.limits SET max = (SELECT max(e.edge_id) FROM city_data.edge e) WHERE what = 'edge';

END;
$$ LANGUAGE 'plpgsql';
-- }


-- Invalid calls
SELECT 'invalid', TopoGeo_addLineString('city_data', 'SRID=4326;MULTILINESTRING((36 26, 38 30))');
SELECT 'invalid', TopoGeo_addLineString('city_data', 'SRID=4326;POINT(36 26)');
SELECT 'invalid', TopoGeo_addLineString('invalid', 'SRID=4326;LINESTRING(36 26, 0 0)');

-- Isolated edge in universal face
SELECT 'iso_uni', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(36 26, 38 30)');
SELECT check_changes();

-- Isolated edge in face 5
SELECT 'iso_f5', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(37 20, 43 19, 41 16)');
SELECT check_changes();

-- Existing isolated edge
SELECT 'iso_ex', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(36 26, 38 30)');
SELECT check_changes();

-- Existing isolated edge within tolerance
SELECT 'iso_ex_tol', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(36 27, 38 31)', 2);
SELECT check_changes();

-- Existing non-isolated edge
SELECT 'noniso_ex', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(35 6, 35 14)');
SELECT check_changes();

-- Existing non-isolated edge within tolerance 
SELECT 'noniso_ex_tol', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(35 7, 35 13)', 2);
SELECT check_changes();

-- Fully contained
SELECT 'contained', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(35 8, 35 12)');
SELECT check_changes();

-- Overlapping 
SELECT 'overlap', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(45 22, 49 22)') ORDER BY 2;
SELECT check_changes();

-- Crossing
SELECT 'cross', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(49 18, 44 17)') ORDER BY 2;
SELECT check_changes();

-- Snapping (and splitting a face)
SELECT 'snap', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(18 22.2, 22.5 22.2, 21.2 20.5)', 1) ORDER BY 2;
SELECT check_changes();
SELECT 'snap_again', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(18 22.2, 22.5 22.2, 21.2 20.5)', 1) ORDER BY 2;
SELECT check_changes();

-- A mix of crossing and overlapping, splitting another face
SELECT 'crossover', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(9 18, 9 20, 21 10, 21 7)') ORDER BY 2;
SELECT check_changes();
SELECT 'crossover_again', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(9 18, 9 20, 21 10, 21 7)') ORDER BY 2;
SELECT check_changes();

-- Fully containing
SELECT 'contains', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(14 34, 13 35, 10 35, 9 35, 7 36)') ORDER BY 2;
SELECT check_changes();

-- Crossing a node
SELECT 'nodecross', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(18 37, 22 37)') ORDER BY 2;
SELECT check_changes();

-- Existing isolated edge with 2 segments
SELECT 'iso_ex_2segs', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(37 20, 43 19, 41 16)');
SELECT check_changes();

-- See http://trac.osgeo.org/postgis/attachment/ticket/1613

SELECT '#1613.1', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(556267.562954 144887.066638, 556267 144887.4)') ORDER BY 2;
SELECT check_changes();
SELECT '#1613.2', TopoGeo_addLineString('city_data', 'SRID=4326;LINESTRING(556250 144887, 556267 144887.07, 556310.04 144887)') ORDER BY 2;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- See http://trac.osgeo.org/postgis/ticket/1631

-- clean all up first
DELETE FROM city_data.edge_data; 
DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1631.1', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(556267.56295432 144887.06663814,556267.566 144888)'
) ORDER BY 2;
SELECT check_changes();
SELECT '#1631.2', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(556254.67 144886.62, 556267.66 144887.07)'
) ORDER BY 2;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- See http://trac.osgeo.org/postgis/ticket/1641

-- clean all up first
DELETE FROM city_data.edge_data; DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1641.1', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(-0.223586 0.474301, 0.142550 0.406124)' 
) ORDER BY 2;
SELECT check_changes();
-- Use a tolerance
SELECT '#1641.2', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(0.095989 0.113619, -0.064646 0.470149)'
  , 1e-16
) ORDER BY 2;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- Now w/out explicit tolerance (will use local min)
-- clean all up first
DELETE FROM city_data.edge_data; DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1641.3', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(-0.223586 0.474301, 0.142550 0.406124)' 
) ORDER BY 2;
SELECT check_changes();
SELECT '#1641.4', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(0.095989 0.113619, -0.064646 0.470149)'
) ORDER BY 2;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- See http://trac.osgeo.org/postgis/ticket/1650

DELETE FROM city_data.edge_data; DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1650.1' UNION ALL
SELECT '#1650.2' || TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(0 0, 0 1)'
, 2)::text;
SELECT check_changes();

SELECT '#1650.3', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(-1 0, 10 0)'
, 2) ORDER BY 2;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- Test snapping of line over a node
-- See http://trac.osgeo.org/postgis/ticket/1654 

DELETE FROM city_data.edge_data; DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1654.1', 'N', ST_AddIsoNode('city_data', 0, 'SRID=4326;POINT(0 0)');
SELECT check_changes();
SELECT '#1654.2', TopoGeo_addLineString('city_data',
  'SRID=4326;LINESTRING(-10 1, 10 1)'
, 2) ORDER BY 2;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- Test snapping of new edge endpoints 
-- See http://trac.osgeo.org/postgis/ticket/1706 

DELETE FROM city_data.edge_data; DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1706.1', 'E', TopoGeo_AddLineString('city_data',
 'SRID=4326;LINESTRING(20 10, 10 10, 9 12, 10 20)');
SELECT check_changes();

SELECT '#1706.2', 'E*', TopoGeo_addLineString('city_data',
 'SRID=4326;LINESTRING(10 0, 10 10, 15 10, 20 10)'
, 4) ORDER BY 3;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- Test noding after snap 
-- See http://trac.osgeo.org/postgis/ticket/1714 

DELETE FROM city_data.edge_data; DELETE FROM city_data.node; 
DELETE FROM city_data.face where face_id > 0; 

SELECT '#1714.1', 'N', AddNode('city_data', 'SRID=4326;POINT(10 0)', false, true);
SELECT check_changes();

SELECT '#1714.2', 'E*', TopoGeo_addLineString('city_data',
 'SRID=4326;LINESTRING(10 0, 0 20, 0 0, 10 0)'
, 12) ORDER BY 3;
SELECT check_changes();

-- Consistency check
SELECT * FROM ValidateTopology('city_data');

-- Cleanups
DROP FUNCTION check_changes();
SELECT DropTopology('city_data');
DELETE FROM spatial_ref_sys where srid = 4326;

-- See http://trac.osgeo.org/postgis/ticket/3280
SELECT 't3280.start', topology.CreateTopology('bug3280') > 0;
SELECT 't3280', 'L1' || topology.TopoGeo_AddLinestring('bug3280',
 '010200000002000000EC51B89E320F3841333333B3A9C8524114AE47611D0F384114AE47B17DC85241'
 ::geometry);
SELECT 't3280', 'L2' || topology.TopoGeo_AddLinestring('bug3280',
 '010200000003000000EC51B89E320F3841333333B3A9C852415649EE1F280F384164E065F493C85241A4703D8A230F38410AD7A37094C85241'
 ::geometry);
SELECT 't3280', 'L1b' || topology.TopoGeo_AddLinestring('bug3280', geom)
 FROM bug3280.edge where edge_id = 1
 ORDER BY 1;
SELECT 't3280.end', topology.DropTopology('bug3280');

-- See http://trac.osgeo.org/postgis/ticket/3380
SELECT 't3380.start', CreateTopology( 'bug3380', 0, 0.01) > 0;
SELECT 't3380.L1', TopoGeo_AddLinestring('bug3380', '
LINESTRING(
1612829.90652844007126987 4841274.48807844985276461,
1612830.1566380700096488 4841287.23833953030407429,
1612883.15799825009889901 4841277.73794914968311787)
', 0);
SELECT 't3380.L2', TopoGeo_AddLinestring('bug3380', '
LINESTRING(
1612790.88055733009241521 4841286.88526585046201944,
1612830.15823523001745343 4841287.12674008030444384,
1612829.98813172010704875 4841274.56198261026293039)
', 0);
SELECT 't3380.L3', TopoGeo_AddLinestring('bug3380', '
 LINESTRING(
1612830.15823523 4841287.12674008,
1612881.64990281 4841274.56198261)
', 0);
SELECT 't3380.end', DropTopology( 'bug3380' );

-- See http://trac.osgeo.org/postgis/ticket/3402

SELECT 't3402.start', CreateTopology('bug3402') > 1;
SELECT 't3402.L1', TopoGeo_addLinestring('bug3402',
'010200000003000000C1AABC2B192739418E7DE0E6AB9652411F85EB5119283941F6285CEF2D9652411F85EB5128283941F6285CCF2C965241'
, 0);
SELECT 't3402.L2', TopoGeo_addLinestring('bug3402',
'010200000003000000BCAABC2B192739418F7DE0E6AB96524185EB51382828394115AE47D12C96524187EB51382828394115AE47D12C965241'
, 0);
SELECT 't3402.end', DropTopology('bug3402');

-- See http://trac.osgeo.org/postgis/ticket/3412
SELECT 't3412.start', CreateTopology('bug3412', 0, 0.001) > 0;
SELECT 't3412.L1', TopoGeo_AddLinestring('bug3412',
'LINESTRING(
599671.37 4889664.32,
599665.52 4889680.18,
599671.37 4889683.4,
599671.37 4889781.87
)'
::geometry, 0);
SELECT 't3412.L2', TopoGeo_AddLinestring('bug3412',
'0102000000020000003AB42BBFEE4C22410010C5A997A6524167BB5DBDEE4C224117FE3DA85FA75241'
::geometry, 0);
SELECT 't3412.end', DropTopology('bug3412');

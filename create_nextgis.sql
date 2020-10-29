CREATE ROLE nextgisweb LOGIN PASSWORD 'changeme';
CREATE DATABASE nextgisweb OWNER nextgisweb;
\connect nextgisweb
CREATE EXTENSION postgis;
ALTER TABLE spatial_ref_sys OWNER TO nextgisweb;
ALTER TABLE geography_columns OWNER TO nextgisweb;
ALTER TABLE geometry_columns OWNER TO nextgisweb;
ALTER TABLE raster_columns OWNER TO nextgisweb;
ALTER TABLE raster_overviews OWNER TO nextgisweb;
CREATE EXTENSION hstore;


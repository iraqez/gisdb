#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# create db nextgis
"${psql[@]}" <<- 'EOSQL'
CREATE ROLE nextgisweb LOGIN PASSWORD 'workfree';
CREATE DATABASE nextgisweb OWNER nextgisweb;
EOSQL

## Load PostGIS into both template_database and $POSTGRES_DB
#for DB in template_postgis "$POSTGRES_DB"; do
#	echo "Loading PostGIS extensions into $DB"
#	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
#		CREATE EXTENSION IF NOT EXISTS postgis;
#		CREATE EXTENSION IF NOT EXISTS postgis_topology;
#		CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
#		CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder;
#EOSQL
#done

#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER cmsuser WITH PASSWORD 'cmsuser';
    CREATE DATABASE cmsdb;
    GRANT ALL PRIVILEGES ON DATABASE cmsdb TO cmsuser;
EOSQL

#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER digdag;
    CREATE DATABASE digdagdb;
    GRANT ALL PRIVILEGES ON DATABASE digdagdb TO digdag;
EOSQL

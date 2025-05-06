#!/bin/bash

set -e
echo $SHIBA_DATABASE
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    
    -- create database shiba --
    CREATE DATABASE $SHIBA_DATABASE;
    --CREATE DATABASE shiba;
    -- create database shiba user --
    CREATE USER $SHIBA_DATABASE_USER WITH PASSWORD '$SHIBA_DATABASE_PASSWORD';
    --CREATE USER shiba_user WITH PASSWORD '';
    -- alter shiba permission to shiba_user --
    ALTER DATABASE $SHIBA_DATABASE OWNER TO $SHIBA_DATABASE_USER;
    --ALTER DATABASE shiba OWNER TO shiba_user;

    -- generate shiba dog schema --

    \c $SHIBA_DATABASE;
    --\c shiba;

    CREATE SCHEMA dog;


    ALTER SCHEMA dog OWNER TO shiba_user;

    SET default_tablespace = '';

    SET default_table_access_method = heap;


    --add your database schema here--

EOSQL
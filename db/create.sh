#!/bin/bash

createdb tapdb
if [ $? -ne 0 ]; then
    # psql will print the error message, so we don't need to do anything
    exit
fi
psql tapdb -f schema.sql
psql tapdb -f test-data.sql


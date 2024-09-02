#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER pap_user with encrypted password 'Passw0rd';
    GRANT ALL PRIVILEGES ON DATABASE pap TO pap_user;
EOSQL
# LILL Org-id - Misc

## Local Postgres Database

To set up:

    docker run --name lill-orgid-postgres -d -e POSTGRES_PASSWORD=1234 -e PGDATA=/var/lib/postgresql/data/pgdata -v lillorgidpostgresdata:/var/lib/postgresql/data -p 127.0.0.1:5432:5432/tcp postgres

To start or stop:

    docker start lill-orgid-postgres
    docker stop lill-orgid-postgres

Connect:

    psql -W -h localhost -U postgres postgres

Set ENV:

    export AZURE_POSTGRES_CONNECTION_STRING=postgresql://postgres:1234@localhost/postgres


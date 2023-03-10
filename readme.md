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



## Kubernetes Setup

Set Secret:

    kubectl create secret generic lillorg-postgres-database --from-literal=AZURE_POSTGRES_CONNECTION_STRING='xxxxxxxxxx'

Apply:

    kubectl apply -f ./kubernetes/deployment.yaml
    kubectl apply -f ./kubernetes/clusterip.yaml
    kubectl apply -f ./kubernetes/ingress.yaml

To deploy latest version of app:

    kubectl rollout restart deployment lill-orgid-web-app


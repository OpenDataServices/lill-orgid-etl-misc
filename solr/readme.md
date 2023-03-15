# SOLR Setup


    
## Running locally

Run all commands in same directory as localhost.

Set up:

    mkdir solrdata
    sudo chown 8983:8983 solrdata

Start server:

    docker compose up

http://localhost:8983 should now be available.

Create cores:

    docker compose exec solr solr create_core -p 8983 -c lillorgidlists -d _default
    docker compose exec solr solr create_core -p 8983 -c lillorgiddata -d _default









## THIS DOES NOT WORK YET

Create lists core

    sudo su
    export NAME="lillorgidlists"
    mkdir solrdata/data/$NAME
    cp -r solrdata/data/default/conf/* solrdata/data/$NAME

    mv solrdata/data/$NAME/managed-schema.xml  solrdata/data/$NAME/schema.xml

    rm solrdata/data/$NAME/managed-schema.xml
    cp $NAME/schema.xml  solrdata/data/$NAME/schema.xml


    chown -R 8983:8983 solrdata
    curl "http://localhost:8983/solr/admin/cores?action=CREATE&name=$NAME&instanceDir=$NAME&schema=schema.xml&dataDir=data"

To clean up - first in web UI unload core then run:

    sudo su
    export NAME="lillorgidlists"
    rm -r solrdata/data/$NAME
#!/bin/sh
sed -i.bak 's@<baseUrl>\([^<][^<]*\)</baseUrl>@<baseUrl>'"$DJANGO_URL"'</baseUrl>@'\
           /geoserver_data/data/security/auth/geonodeAuthProvider/config.xml

sed -i 's/geonode\/geoserver\/index.html/geoserver\/index.html' \
    /geoserver_data/data/security/filter/geonode-oauth2/config.xml

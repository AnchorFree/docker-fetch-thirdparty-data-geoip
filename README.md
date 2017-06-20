# docker-fetch-thirdparty-data-geoip
A container which fetches 3rd party GeoIP data.

## Environment
The following environment variables must be passed to the container on start.

```
USERID
LICENSEKEY
PRODUCTSID
```

## Output
Updated GeoIP data will be copied to /geoip_data.
You are expected to mount this into the docker container to extract the data. 

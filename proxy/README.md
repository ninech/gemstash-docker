# docker-reverse-proxy

`docker-reverse-proxy` acts as a proxy container for your application. It is based
on Apache and allows to restrict access with IP restrictions and/or basic auth.

It runs fine on OpenShift and binds port 8080 per default.

## Environment variabels

- `PROXY_TARGET_URL` URL of the application to proxy to, must end with a trailing slash `/`. On OpenShift, this usually is something like `http://service:port/`
- `IPS_ACCESS_WHITELIST` optional comma separated list of IPs/subnets that are allowed to access the proxy
- `LOG_LEVEL` optional log level for Apache (default is `info`)
- `BASIC_AUTH_TOKEN` Token for basic authentication.

# Testing it locally

To run it locally, you can use the following commands:

```
docker build -t docker-reverse-proxy:latest .
docker run -ti -p 9999:8080 -e PROXY_TARGET_URL='http://example.net/' docker-reverse-proxy
```

# autoproxy

See the official doc:

- https://github.com/jwilder/nginx-proxy

## How to use this

- Create the networks and volumes with the shell script run as sudo...


### Initial Test

Use `test.yml` and run ` curl -H "Host: whoami.local" localhost`

### How to plug a new app to this nginx

Use a docker compose files that specifies:

1. External networks for `html`, `certs` and `vhost.d`.

### Explanation of volumes

- `html`: used for static assets
- `certs`: for lets-encrypt certificates
- `vhost.d`: for per-site nginx configruations that has to be names like `sub.mydomain.ch.conf`
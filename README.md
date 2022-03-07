# autoproxy

See the official doc at https://github.com/jwilder/nginx-proxy

## Usage in Gitlab CI/CD

You can fork this repository to a Gitlab group project. This allows you to deploy apps from other Repos in this group 
using the `VIRTUAL_HOST` environment variables on a VM with a Gitlab runner installed. 
The example `.gitlab-ci.yml` uses the Gitlab container registry.

**Note**: If you use a group runner on a droplet, disable shared runners in this project first.

### Initial Test

First create the external networks:

    sudo ./create-networks.sh

In order to test this configuration, combine `docker-compose.yml` with `test.yml`:

    docker-compose -f docker-compose.yml -f test.yml up

The run `curl -H "Host: whoami.local" localhost`. The container will output its hostname.

### Explanation of volumes

- `html`: used for static assets
- `certs`: for lets-encrypt certificates
- `vhost.d`: for per-site nginx configurations that has to be names like `sub.mydomain.ch.conf`

### Notes

This ideal for small deployments / test environments to make your life easier, 
but I do not recommend using this in production.

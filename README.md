You need to install docker
https://www.docker.com/products/docker-desktop/

copy the template.env, rename to .env
get godaddy api key/secret, put it there


# notes below
do dev things with `make dev`

prod things with `make prod`

caddy runs in a container listening on port 443, handles https with lets encrypt, and then reverse proxies to port 80.

a second container listens on port 80, and uses nginx to serve the static build from svelte
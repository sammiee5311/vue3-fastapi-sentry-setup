# Vue3 & Fast-Api & Sentry Setup with Nginx

[![CI](https://github.com/sammiee5311/vue3-fastapi-sentry-setup/actions/workflows/CI.yml/badge.svg)](https://github.com/sammiee5311/vue3-fastapi-sentry-setup/actions/workflows/CI.yml)

## Step 1
- Type following command to create ssl keys for nginx: `make create-ssl-key`.

## Step 2
- Use `docker-compose up --build` command to build docker images and get a sentry dns for backend.

## Step 3
- Create a sentry project and get the dns for backend. (ex, `http://51148911131c4d94a986d12035901801@localhost:9000/4`)
- Copy the sentry dns and paste to `/backend/config/.env`.
- Use `docker-compose down` command to remove all the docker images that just are created.

## Step 4
- Use `docker-compose up --build` command again.
- Use `https://localhost:443` to connect to frontend.


## Test
- `make test-all`
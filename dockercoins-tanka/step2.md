## Deploy the dev stack from scratch

- `task all`{{execute}} will deploy dev environment after a cleanup

- `ENV=qa task deploy`{{execute}} will deploy QA environment

- `ENV=prod task deploy`{{execute}} will deploy PROD environment

## Check the deployment

`kubectl get all -n dockercoins`{{execute}}

## Acecss to the webui

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

## Cleanup

- `task clean`{{execute}}

### Templates

- default : main.jsonnet - Just use config and project file
- dev = default
- qa : change namespace and some tags of images,
- prod : change namespace, some tags of images and replicas (patching)

## Deploy the dev stack from scratch

- `task all`{{execute}} will deploy dev environment after a cleanup

## Check the deployment

`kubectl get all -n dockercoins`{{execute}}

## Acecss to the webui

copy paste the output in a browser

`echo [[HOST_SUBDOMAIN]]-$(kubectl get -o jsonpath="{.spec.ports[0].nodePort}" services webui -n dockercoins)-[[KATACODA_HOST]].environments.katacoda.com`

## test other environments

- `ENV=qa task deploy`{{execute}} will deploy QA environment

- `ENV=prod task deploy`{{execute}} will deploy PROD environment

## Cleanup

- `task clean`{{execute}}

### Templates

- default : main.jsonnet - Just use config and project file
- dev = default
- qa : change namespace and some tags of images,
- prod : change namespace, some tags of images and replicas (patching)

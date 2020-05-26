## Deploy the dev stack from scratch

- `task all` will deploy dev environment after a cleanup

- `ENV=qa task deploy` will deploy QA environment

- `ENV=prod task deploy` will deploy PROD environment

## Cleanup

- `task clean`

### Templates

- default : main.jsonnet - Just use config and project file
- dev = default
- qa : change namespace and some tags of images,
- prod : change namespace, some tags of images and replicas (patching)

# quickstart
```bash
cp example.env .env
vim .env  # add the key you get from the "create runner page"
docker-compose up -d
```

Link to doco: https://circleci.com/docs/2.0/configuration-reference/#self-hosted-runner

Your job needs to define the runner to use
```yaml
jobs:
  job_name:
    machine: true
    resource_class: <my-namespace>/<my-runner>
```

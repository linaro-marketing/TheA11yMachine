# a11ym dashboard

## Build the Docker Image

```bash
docker build -t liip/the-a11y-machine .
```

## Reports

Reports are generate with the following docker run command.

```bash
docker run --rm -it -v $PWD/reports:/var/output liip/the-a11y-machine a11ym -o /var/output/op-tee-org/`date +%s`/ https://www.op-tee.org
```

## Dashboards

Dashboards are generated from a reports directory.

```bash
 docker run --rm -it -v $PWD/reports:/var/output liip/the-a11y-machine a11ym-dashboard -r /var/output/op-tee-org --app-root /app --static-output
```

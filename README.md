# Chatwoot Bot Helm Chart

This project contains a Helm chart for deploying the Chatwoot bot on a Kubernetes cluster.

## Chart Details

This chart will do the following:

- Create a deployment named `chatwoot-bot` configured with the image and tag specified in [values.yaml](values.yaml).
- Expose the deployment as a service of the type specified in [values.yaml](values.yaml).

## Installing the Chart

To install the chart with the release name `my-release`:

```sh
helm install --name my-release .
```

## Configuration

The following table lists the configurable parameters of the Chatwoot bot chart and their default values.

| Parameter              | Description          | Default                        |
|------------------------|----------------------|--------------------------------|
| `replica_count`        | Number of replicas   | `1`                            |
| `image.repository`     | Image repository     | `juliantoro/chatwoot-bot`      |
| `image.tag`            | Image tag            | `latest`                       |
| `image.pull_policy`    | Image pull policy    | `IfNotPresent`                 |
| `service.type`         | Service type         | `ClusterIP`                    |
| `service.port`         | Service port         | `80`                           |
| `env.chatwoot_base_url`| Chatwoot base URL    | `"https://your.chatwoot.instance"`|
| `env.chatwoot_api_key` | Chatwoot API key     | `"your_chatwoot_api_key"`      |
| `env.account_id`       | Account ID           | `"your_account_id"`            |
|------------------------|----------------------|--------------------------------|

You can specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example:

```sh
helm install my-chatwoot-bot -f values.yaml ./chatwoot-bot
```
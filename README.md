# Oselvar GitHub Metrics

This repository contains [Oselvar CSV](https://github.com/oselvar/connector/#oselvar-csv)
for this GitHub organisation's repositories listed in [repositories.txt](./repositories.txt).

The CSV files are updates hourly by a [GitHub Action](./github/workflows/oselvar.yml).

View charts for this data at `https://oselvar.com/github/ORGANISATION_NAME`

## Publish your own Oselvar Metrics

You can publish metrics for your own GitHub organisation and view them on https://oselvar.com/

1. Click the green `Use this template` button or follow [this link](https://github.com/oselvar/oselvar-github-metrics/generate)
to set up Oselvar GitHub Metrics in your own repository.
2. Modify `repositories.txt` and list your GitHub organisation's repositories

If you want to override the stages in the generated CSV, you can add a `;` after the repo name,
followed by a comma-separated list of stages.

See [Oselvar Connector](https://github.com/oselvar/connector/) for more details, or run
`npx @oselvar/connector-github --help`.

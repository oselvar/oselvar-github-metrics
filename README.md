# Oselvar GitHub Metrics

This repository contains [Oselvar CSV](https://github.com/oselvar/connector/#oselvar-csv)
for this GitHub organisation's repositories listed in [repositories.txt](./repositories.txt).

The CSV files are updates hourly by a [GitHub Action](./github/workflows/oselvar.yml).

View charts for this data at `https://oselvar.com/github/ORGANISATION_NAME/oselvar-github-metrics/DEFAULT_BRANCH`

## Publish your own Oselvar Metrics

You can publish metrics for repositories in you own GitHub organisation and view them on https://oselvar.com/
To do this you need to set up a fork of this repository to host your data.

1. Click the green `Use this template` button or follow [this link](https://github.com/oselvar/oselvar-github-metrics/generate)
1. Modify `repositories.txt` and list your GitHub organisation's repositories
1. Commit and push your changes
1. Go to https://oselvar.com/github/ORGANISATION_NAME/oselvar-github-metrics/DEFAULT_BRANCH to see your data

If you want to override the stages in the generated CSV, you can add a `;` after the repo name,
followed by a comma-separated list of stages.

For example:
```
myorg/myrepo;open,Needs Maintainer Action,Needs Maintainer Review,Waiting for Code Reviews,Needs Author Action,Waiting for Author to Merge,Recently Merged,Other
```

See [Oselvar Connector](https://github.com/oselvar/connector/) for more details, or run
`npx @oselvar/connector-github --help`.

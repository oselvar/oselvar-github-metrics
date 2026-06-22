# Oselvar GitHub Metrics

The [data](./data) directory contains [Oselvar CSV](https://github.com/oselvar/connector/#oselvar-csv)
for the GitHub repositories listed in [repositories.txt](./repositories.txt).

The CSV files are updates hourly by a [GitHub Action](./.github/workflows/oselvar.yml).

View charts for this data at [oselvar.com]

## Publish your own Oselvar Metrics

You can publish metrics for repositories in you own GitHub organisation and view them on https://www.oselvar.com/
To do this you need to set up a fork of this repository to host your data.

1. Click the green `Use this template` button or follow [this link](https://github.com/oselvar/oselvar-github-metrics/generate).
1. Modify [repositories.txt](./repositories.txt) and list your GitHub organisation's repositories.
   If you want to override the default stages in the generated CSV, you can add a `;` after the repo name,
   followed by a comma-separated list of stages.
1. Commit and push your changes.
1. Go to [oselvar.com] to see your data.

See [Oselvar Connector](https://github.com/oselvar/connector/) for more details, or print the help:

    npx @oselvar/connector-github@latest --help

## Using a personal GitHub token

The `GITHUB_TOKEN` provided by GitHub Actions is used by default to extract data from GitHub issues.
There are some situations where you may want to use a `PERSONAL_GITHUB_TOKEN` instead:

* If you want to extract data from GitHub issues in a different organisation.
* If your GitHub Action job fails with an error message like `GraphqlError: Resource not accessible by integration`.

Follow these steps:

1. Create a [new personal access token](https://github.com/settings/tokens/new) with `public_repo` scope. *Copy it to your clipboard*.
1. Store your new token in a new `PERSONAL_GITHUB_TOKEN` repository secret via `Settings` -> `Secrets` -> `New repository secret`.

The next time your GitHub Action runs, it will pick up `PERSONAL_GITHUB_TOKEN` instead of `GITHUB_TOKEN`.

<!--
Update this link if you publish your own metrics:

* Replace oselvar with your organisation name
* Replace main with your default branch name, if it's different

-->

[oselvar.com]: https://www.oselvar.com/github/oselvar/oselvar-github-metrics/main

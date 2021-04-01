#!/usr/bin/env bash
#
# Updates issues.csv and pullRequests.csv for each repo listed in repositories.txt
#
set -e
[ -z "${GITHUB_TOKEN}" ] && echo -e "\033[0;31mPlease define the GITHUB_TOKEN environment variable\033[0m" && exit 1

rm -rf data
while read line; do
  IFS=';' read -r -a array <<< "${line}"
  repo="${array[0]}"
  stages="${array[1]}"
  dir="data/${repo}"
  mkdir -p "${dir}"
  echo "Generating CSV for ${repo} ..."
  if [ -z "${stages}" ]; then
    npx -y @oselvar/connector-github@latest --repo ${repo} --type pullRequests --auth "${GITHUB_TOKEN}"                      > "${dir}/pullRequests.csv"
    npx -y @oselvar/connector-github@latest --repo ${repo} --type issues       --auth "${GITHUB_TOKEN}"                      > "${dir}/issues.csv"
  else
    npx -y @oselvar/connector-github@latest --repo ${repo} --type pullRequests --auth "${GITHUB_TOKEN}" --stages "${stages}" > "${dir}/pullRequests.csv"
    npx -y @oselvar/connector-github@latest --repo ${repo} --type issues       --auth "${GITHUB_TOKEN}" --stages "${stages}" > "${dir}/issues.csv"
  fi
done < repositories.txt

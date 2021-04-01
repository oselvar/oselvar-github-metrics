#!/usr/bin/env bash
#
# Updates issues.csv and pullRequests.csv for each repo listed in repositories.txt
#

[ -z "${GITHUB_TOKEN}" ] && echo -e "\033[0;31mPlease define the GITHUB_TOKEN environment variable\033[0m" && exit 1

while read line; do
  IFS=';' read -r -a array <<< "${line}"
  repo="${array[0]}"
  stages="${array[1]}"
  dir="data/${repo}"
  mkdir -p "${dir}"
  echo "${repo} ..."
  if [ -z "${stages}" ]; then
    npx -y @oselvar/connector-github --repo ${repo} --type issues --auth "${GITHUB_TOKEN}"                      > "${dir}/issues.csv"
  else
    npx -y @oselvar/connector-github --repo ${repo} --type issues --auth "${GITHUB_TOKEN}" --stages "${stages}" > "${dir}/issues.csv"
  fi
done < repositories.txt

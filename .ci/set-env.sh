#!/bin/sh
set -eu

set -a
. .ci/lib.sh
set +a

echo && echo 'Setting up environment'

app_name='blocky'
printf 'APP_NAME=%s\n' "$app_name" >> "$CI_ENV_FILE"

app_component='server'
printf 'APP_COMPONENT=%s\n' "$app_component" >> "$CI_ENV_FILE"

printf 'APP_VERSION=%s\n' "$(getAppVersion)" >> "$CI_ENV_FILE"
printf 'BLOCKY_VERSION=%s\n' 'v0.25' >> "$CI_ENV_FILE"

printf 'HARBOR_REGISTRY=%s\n' 'harbor.flakybit.net' >> "$CI_ENV_FILE"
printf 'EXTERNAL_REGISTRY_NAMESPACE=%s\n' 'flakybitnet' >> "$CI_ENV_FILE"

cat "$CI_ENV_FILE"

echo && echo 'Done'

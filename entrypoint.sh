#!/usr/bin/env sh
# Bash 'Strict Mode'
# http://redsymbol.net/articles/unofficial-bash-strict-mode
# https://github.com/xwmx/bash-boilerplate#bash-strict-mode
set -o nounset
set -o errexit
set -o pipefail
IFS=$'\n\t'

if [ -z "$DISCORD_TOKEN" ]
then
  echo "You need to specify a DISCORD_TOKEN"
  exit 1
else
  echo "DISCORD_TOKEN specified"
fi

if [ -z "$INFURA_API_KEY" ]
then
  echo "You need to specify a INFURA_API_KEY"
  exit 1
else
  echo "INFURA_API_KEY specified"
fi


INFURA_API_KEY=$INFURA_API_KEY DISCORD_TOKEN=$DISCORD_TOKEN node ./bot.js

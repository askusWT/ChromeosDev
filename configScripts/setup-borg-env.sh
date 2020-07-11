#!/bin/bash
set -e 

# This is required by installScripts/installBorgTools.  Separated as a matter of
# convention and also because we want to keep all user prompting to the beginning
# of the main install script.

mkdir -p ~/.beleyenv
rm -f ~/.beleyenv/borg-env
touch ~/.beleyenv/borg-env

BORG_REPO=$(jq -r '.borgRepo' config.json)

read -rsp 'Borg Passphrase:' BORG_PASSPHRASE

echo "BORG_REPO=\"${BORG_REPO}\"" >> ~/.beleyenv/borg-env
echo "BORG_PASSPHRASE=\"${BORG_PASSPHRASE}\"" >> ~/.beleyenv/borg-env

#!/bin/bash -eu                                          
. "`cd $(dirname "${BASH_SOURCE[0]}"); pwd`"/../lib/lib-logging.sh

log "Exporting AWS auth tokens from enviornment to applications"

launchctl setenv AWS_SESSION_TOKEN   $AWS_SESSION_TOKEN
launchctl setenv AWS_DEFAULT_REGION $AWS_DEFAULT_REGION
launchctl setenv AWS_SECRET_ACCESS_KEY $AWS_SECRET_ACCESS_KEY
launchctl setenv AWS_REGION $AWS_REGION
launchctl setenv AWS_ACCESS_KEY_ID $AWS_ACCESS_KEY_ID
launchctl setenv AWS_SECURITY_TOKEN $AWS_SECURITY_TOKEN
launchctl setenv AWS_ROLE_IDENTIFIER $AWS_ROLE_IDENTIFIER

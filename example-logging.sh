#!/bin/bash -eu

# Source the logging script
. `cd $(dirname "$0"); pwd`/lib-logging.sh

log "Start of script"
warn "Oh! Look!"
error "Something went wrong"

banner "Don't worry!"

fail_banner "panic"

success_banner "No, don't panic"

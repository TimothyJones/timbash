#!/bin/bash -eu

# Source the logging script
. `cd $(dirname "${BASH_SOURCE[0]}"); pwd`/lib/lib-logging.sh

log "Start of script"
warn "Oh! Look!"
error "Something went wrong"
success "But everything is ok!"

banner "Don't worry!"

fail_banner "panic"

success_banner "No, don't panic"

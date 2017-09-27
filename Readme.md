# timbash - useful bash functions

Here are some bash functions I find myself including often.

## Script reference:

* `bin/aws-mac.sh`: Exposes the AWS auth environment variables to mac applications

## Logging library:

This is a logging library for printing nice logs from scripts. Examples:

```bash
#!/bin/bash -eu

# Source the logging script
. `cd $(dirname "${BASH_SOURCE[0]}"); pwd`/lib/lib-logging.sh

log "Start of script"
warn "Oh! Look!"
error "Something went wrong"

banner "Don't worry!"

fail_banner "panic"

success_banner "No, don't panic"
```
Output:

![Example output](http://i.imgur.com/UnhKGf9.jpg)

### Function reference

* `log`: Prints everything passed to it, preceeded by `[ ] <script name>`. Coloured blue.
* `error`: Prints everything passed to it, preceeded by `[❌ ] <script name>`. Coloured red.
* `warn`: Prints everything passed to it, preceeded by `[🔔 ] <script name>`. Coloured yellow.
* `banner`: Prints everything passed to it, surrounded by `*` characters. Does not handle multiple lines.
* `success_banner`: As `banner`, but green.
* `fail_banner`: As `banner`, but red.

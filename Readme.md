# timbash - useful bash functions

Here are some bash functions I find myself including often.


## Example usage:

```bash
#!/bin/bash -eu

# Source the logging script
. `cd $(dirname "$0"); pwd`/lib-logging.sh

log "Start of script"
warn "Oh! Look!"
error "Something went wrong"

banner "Don't worry!"

fail_banner "panic"

success_banner "No, don't panic"
```
Output:

![Example output](http://i.imgur.com/n2PD5HX.jpg)

## Function reference

* `log`: Prints everything passed to it, preceeded by `[ ]`. Coloured blue.
* `error`: Prints everything passed to it, preceeded by `[❌ ]`. Coloured red.
* `warn`: Prints everything passed to it, preceeded by `[🔔 ]`. Coloured yellow.
* `banner`: Prints everything passed to it, surrounded by `*` characters. Does not handle multiple lines.
* `success_banner`: As `banner`, but green.
* `fail_banner`: As `banner`, but red.

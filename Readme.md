# timbash - useful bash functions

Here are some bash functions I find myself including often.


## Example usage:

```
#!/bin/bash
. lib-logging.sh

log "Start of script"
error "Something went wrong"

banner "Don't worry!"

fail_banner "panic"

success_banner "No, don't panic"
```
Output:

![Example output](http://i.imgur.com/XtYlZzr.jpg)

## Function reference

* `log`: Prints everything passed to it, preceeded by `[ ]`. Coloured blue.
* `error`: Prints everything passed to it, preceeded by `[❌ ]`. Coloured red.
* `banner`: Prints everything passed to it, surrounded by `*` characters. Does not handle multiple lines.
* `success_banner`: As `banner`, but green.
* `fail_banner`: As `banner`, but red.

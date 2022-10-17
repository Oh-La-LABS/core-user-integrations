############################################################
## Custom shell script to run as ROOT when --prepare is 
## executed for {{manifest.name}}.
## Runs as ROOT, NOT a regular user!
############################################################

############################################################
### If not used by {{installer.command_name}}, DELETE THIS FILE!
############################################################

## Example:
if [ "$COMMAND" == "prepare" ]; then
  if is_root; then
    info "Executing the first part of prepare as root"
    
    # mkdir -p $DATA_FOLDER/etc
    # umask 0037

    # Do stuff...

    # umask 0022
    # info "Done!"

    # If prepare also needs to run as the podman user, comment out this exit:
    # exit 0
  fi
fi

############################################################
## Custom shell script to run as a regular user when 
## --prepare is executed for tautulli.
## Runs as a regular user, NOT root!
############################################################

############################################################
### If not used by cui-tautulli, DELETE THIS FILE!
############################################################

## Example:
if [ "$COMMAND" == "prepare" ]; then
  info "Finalizing preparations for the ${NAME} container as the podman user..."

  umask 0037
  if [ ! -s $DATA_FOLDER/config/config.ini ]; then
    cp -f /etc/default/core/{{manifest.name}}/config.ini $DATA_FOLDER/config/config.ini
  fi
  
  umask 0022

  # info "Done!"
  # exit 0
fi
############################################################
## Custom shell script to run as a regular user when 
## --prepare is executed for tautulli.
## Runs as a regular user, NOT root!
############################################################

if [ "$COMMAND" == "prepare" ]; then
  info "Finalizing preparations for the ${NAME} container as the podman user..."

  umask 0037
  if [ ! -s $DATA_FOLDER/config/config.xml ]; then
    cp -f /etc/default/core/{{manifest.name}}/config.xml $DATA_FOLDER/config/config.xml
    podman unshare chown 1000:0 $DATA_FOLDER/config/config.xml
  fi
  umask 0022
  info "Done!"
fi
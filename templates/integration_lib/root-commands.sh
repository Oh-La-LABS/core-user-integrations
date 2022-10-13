############################################################
## Custom commands as defined in script-usage and 
## additional-arguments for {{manifest.name}}.
## Runs as ROOT, NOT a regular user!
############################################################

############################################################
### If not used by {{installer.command_name}}, DELETE THIS FILE!
############################################################

## Examples:
# if [ "$COMMAND" == "has-backup" ]; then
#   exit_if_not_root
#   if [ -f $DATA_FOLDER/backup/tmp/meta.00 ] && [ -f $DATA_FOLDER/backup/databases.lst ]; then
#     info "Backup of InfluxDB exist!"
#     exit 0
#   else
#     warn "No Backup of InfluxDB exist!"
#     exit 1
#   fi
# fi

# if [ "$COMMAND" == "data-reset" ]; then
#   exit_if_not_root
#   if [ $FORCE != true ]; then
#     warn "NOT running RESET of InfluxDB... Specify --force to actually DELETE all that data..."
#     exit 1
#   fi
#   if [ "$(systemctl is-active podman-influxdb)" == "active" ]; then
#     error "InfluxDB is ACTIVE! Can't reset the data in InfluxDB right now! Run \"$SCRIPT_NAME --stop\" first..."
#   fi
#   rm -rf /data/root/home/oh-la/data/influxdb/data
#   rm -rf /data/root/home/oh-la/data/influxdb/meta
#   rm -rf /data/root/home/oh-la/data/influxdb/wal
#   mount -o remount /home || true
#   info "ALL InfluxDB data has been removed!"
#   exit 0
# fi

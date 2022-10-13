############################################################
## Custom commands as defined in script-usage and 
## additional-arguments for {{manifest.name}}.
## Runs as a regular user, NOT root!
############################################################

############################################################
### If not used by {{installer.command_name}}, DELETE THIS FILE!
############################################################

## Example:
# if [ "$COMMAND" == "configure" ]; then
#   info "Running configuration commands for ${NAME}..."
#   info "Creating user oh-la in case it doesn't exist..."
#   # Grafana will create any user not currently in existence when the call comes from a trusted IP
#   curl --no-progress-meter -H "X-USER: oh-la" http://10.10.2.1:3001/api/users > /dev/null && echo
  
#   info "Setting the Default Organisation name"
#   # https://grafana.com/docs/grafana/latest/http_api/org/#update-organization
#   curl --no-progress-meter -H "X-USER: admin" -X PUT "http://10.10.2.1:3001/api/orgs/1" -H "Content-Type: application/json" --data '{ "name": "CORE" }' && echo

#   info "Making the oh-la user into Grafana Admin and Admin of Organisation 1"
#   # Assuming oh-la is ID probably 2 since this executes before anything else has time to run this, at least on a CORE not
#   # modified by the user...
#   # But... we won't assume anything...
#   ADMIN_ID=$( curl --no-progress-meter -H "X-USER: admin" "http://10.10.2.1:3001/api/users/lookup?loginOrEmail=oh-la" | jq '.id' )
#   [ -z "${ADMIN_ID##[0-9]*}" ] || ( echo "Not a valid user id ($ADMIN_ID), aborting..." && exit 1 )
#   info "Found User ID ${ADMIN_ID} for user oh-la..."
#   curl --no-progress-meter -H "X-USER: admin" -X PUT "http://10.10.2.1:3001/api/admin/users/${ADMIN_ID}/permissions" -H "Content-Type: application/json" --data '{ "isGrafanaAdmin": true }' && echo
#   curl --no-progress-meter -H "X-USER: admin" -X PATCH "http://10.10.2.1:3001/api/orgs/1/users/${ADMIN_ID}" -H "Content-Type: application/json" --data '{ "role": "Admin" }' && echo
#   info "Done!"
#   exit 0
# fi

# Introduction of Sonarr
Sonarr is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available.

# Post-install setup steps
Make sure to mount any and all CIFS/SMB/NFS shares or USB drives needed inside the container in /mnt (eg /mnt/my_nas_share) on CORE.
See the following locations for related information:
* [This README](https://github.com/oh-la-labs/core-user-integrations/tree/main/cookbook/sonarr)
* [Sonarr Wiki](https://wiki.servarr.com/Sonarr)

# Basic Usage
The command which controls this User Integration is "cui-sonarr". 
It accepts all the standard cui-command parameters. For more information run "cui-sonarr --help".

The URL to this Integration is:
https://collective-core.local/pods/direct/sonarr/

# Places for Help
* [Collective-DOCS](https://docs.oh-lalabs.com)
* [The Community](https://community.oh-lalabs.com)
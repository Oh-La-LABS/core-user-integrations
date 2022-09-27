# core-user-integrations
CORE User Integrations Monorepo

# Working with the monorepo
To create/update a user integration the following steps are needed:
* Fork this repo on GitHub.
* Clone YOUR fork to /home/oh-la/src/core-user-integrations on CORE using GitHub CLI (the "gh" command, eg: `gh repo clone [your GitHub user]/core-user-integrations`).
* Create a new branch in your fork with the same name as the integration, eg "tasmoadmin".
* Switch to the new branch.
* Create your integration. Additional help/guidance in [Collective-DOCS](https://docs.oh-lalabs.com/) and through the [Community](https://community.oh-lalabs.com).
* Create a pull-request against "https://github.com/Oh-La-LABS/core-user-integrations".

## User Integration License
The license for a User Integration has to be MIT, this doesn't mean that the container or packages installed needs to be MIT licensed, just the User Integration files contained in this repository. External files may have any open source license they happen to have, just make sure to fill it in clearly in the manifest.

## Clone the repo for development
To clone this repo to CORE for development, first fork it on GitHub, then use GitHub CLI tools on CORE to clone your fork.

## Updating all submodules
This monorepo is using submodules for schemas. 

Submodules are NOT allowed in packages. Use the manifest for your integration to use a remote git repository.

To update all submodules, run the following in the root of the checked out repository:
```
git submodule update --recursive --remote
```

# Introduction
Basherbee is a Linux-only bash utility, wrapping basher but adding a few features. More about basher at https://github.com/basherpm/basher/blob/master/README.md.  
| Feature                | basher                       | basherbee                                                                     |
|------------------------|----------------------------- |-----------------------------------------------------------------------------  |
| Package Installation   | ```basher help install ```   | ```basherbee help install```<br>(basher plus extra features)                  |
| Package Uninstallation | ```basher help uninstall```  | ```basherbee help uninstall```<br>(basher plus extra features)                |
| Package Upgrade        | ```basher help upgrade```    | ```basherbee help upgrade```<br>(basher plus extra features)                  |
| basherbee.config       | Bash script file unsupported | Runs during pkg installation to let user configure pkg features               |
| basherbee-rc           | Bash script file unsupported | If present in pkg-root dir, add to bash using 'source ${PKG_DIR}/basherbee-rc'|
| cd-package Alias Setup | Unsupported                  | Sets up a cd alias for each package                                           |


# basherbee setup
## Pre-requisite - basher
Install basher by referring to https://github.com/basherpm/basher/blob/master/README.md
## Install basherbee
```basher install chetanc10/basherbee```  
After installing basherbee using basher, run this command to setup basherbee hooks into bash environment
```${HOME}/.basher/cellar/packages/chetanc10/basherbee/install.sh```
### Uninstall basherbee
Uninstalling basherbee will additionally remove basherbee-related setup like basherbee-rc sourcing and Package-cd-aliasing for basherbee packages.
```${HOME}/.basher/cellar/packages/chetanc10/basherbee/uninstall.sh```
```basher uninstall chetanc10/basherbee```  

# Package Installations
```basherbee install user1/pkg2```  
This does ```basher install given user1/pkg2``` first, and then setup using basherbee.config, basherbee-rc sourcing and Package-cd-aliasing.

# Package Uninstallations
```basherbee uninstall user1/pkg2```
This does basherbee-rc-source disabling and removing Package-cd-alias first and then ```basher uninstall user1/pkg2```.

# Package Upgrades
```basherbee upgrade user1/pkg2```
This does ```basher upgrade user1/pkg2``` first, and then setup using basherbee.config and basherbee-rc sourcing.

# basherbee files
## basherbee.config
This is a bash script file that can do any or all of the operations as below:  
- install dpkg dependencies - apt-get installs bash utilities/tools that the package depends on
- one time setup - allows user to configure behavior of the scripts/executables provided by the package
## basherbee-rc
This is a bash script file to be sourced in bash to setup package specific variables, aliases, etc.

#!/bin/bash

read -p "Confirm if you want to remove basherbee (y|n): " ok
[ $ok != 'y' ] && exit -1

# Remove sourcing of ${HOME}/.basherbee_src-rc and ${HOME}/basherbee_aliases from ${HOME}/.bashrc
sed -i "/basherbee/d" ${HOME}/.bashrc

exit 0

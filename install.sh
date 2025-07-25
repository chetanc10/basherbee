#!/bin/bash

if [ ! -d ${HOME}/.basher/cellar/packages/chetanc10/basherbee ]; then
	echo "ERROR: basherbee is not installed using basher!"
	echo "       Please install basherbee using basher: basher install chetanc10/basher"
	exit -1
fi

bee_dir="${HOME}/.basher/cellar/packages/chetanc10/basherbee"

# Create ${HOME}/.basherbee_src-rc and ${HOME}/basherbee_aliases if not available
touch ${HOME}/.basherbee_src-rc ${HOME}/.basherbee_aliases

# Ensure ${HOME}/.basherbee_src-rc is sourced in ${HOME}/.bashrc
grep -Fq ".basherbee_src-rc" ${HOME}/.bashrc || echo ". ${HOME}/.basherbee_src-rc" >> ${HOME}/.bashrc

# Ensure ${HOME}/basherbee_aliases is sourced in ${HOME}/.bashrc
grep -Fq ".basherbee_aliases" ${HOME}/.bashrc || echo ". ${HOME}/.basherbee_aliases" >> ${HOME}/.bashrc

exit 0

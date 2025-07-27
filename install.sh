#!/bin/bash

if [ ! -d ${HOME}/.basher/cellar/packages/chetanc10/basherbee ]; then
	echo "ERROR: basherbee is not installed using basher!"
	echo "       Please install basherbee using basher: basher install chetanc10/basher"
	exit -1
fi

bee_dir="${HOME}/.basher/cellar/packages/chetanc10/basherbee"

# Create ${HOME}/.basherbee_src-rc and ${HOME}/basherbee_aliases if not available
bee_rcf=${HOME}/.basherbee_src-rc
bee_aliasf=${HOME}/.basherbee_aliases
touch ${bee_rcf} ${bee_aliasf}

# Ensure ${HOME}/.basherbee_src-rc is sourced in ${HOME}/.bashrc
if ! grep -Fq ".basherbee_src-rc" ${HOME}/.bashrc; then
	echo "[ -f ${bee_rcf} ] && . ${bee_rcf}" >> ${HOME}/.bashrc
fi

# Ensure ${HOME}/basherbee_aliases is sourced in ${HOME}/.bashrc
if ! grep -Fq ".basherbee_aliases" ${HOME}/.bashrc; then
	echo "[ -f ${bee_aliasf} ] && . ${bee_aliasf}" >> ${HOME}/.bashrc
fi

exit 0

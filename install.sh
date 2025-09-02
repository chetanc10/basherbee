#!/bin/bash

if [ ! -d ${HOME}/.basher/cellar/packages/chetanc10/basherbee ]; then
	echo "Please install basherbee using basher: basher install chetanc10/basher"
	exit -1
fi

sudo apt-get install libarchive-zip-perl -y || exit -1

bee_dir="${HOME}/.basher/cellar/packages/chetanc10/basherbee"

# Create ${HOME}/.gbasherbee-rc if not available
bee_rcf=${HOME}/.gbasherbee-rc
touch ${bee_rcf}

# Ensure ${HOME}/.gbasherbee-rc is sourced in ${HOME}/.bashrc
if ! grep -Fq ".gbasherbee-rc" ${HOME}/.bashrc; then
	echo "[ -f ${bee_rcf} ] && . ${bee_rcf}" >> ${HOME}/.bashrc
fi

exit 0

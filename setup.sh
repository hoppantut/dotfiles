#!/bin/bash
log=`basename $0`.log

command -v realpath >/dev/null 2>&1 || { echo >&2 "realpath is not installed.  Aborting."; exit 1; }
exec >  >(tee -a ${log})
exec 2> >(tee -a ${log} >&2)

echo -e "\n`date`"
for dotfile in `find . -type f \( -iname ".*" -not -iname ".*.*" \) -printf "%f\n"` ; do
    echo "Looking at ${dotfile}"

    if [[ ${dotfile} == .git* ]]; then
        echo "  ${dotfile} is a git file. Skipping"
        continue
    fi

    if [ -f $HOME/${dotfile} ] && [ "`md5sum $HOME/${dotfile} | awk '{ print $1 }'`" = "`md5sum ${dotfile} | awk '{ print $1 }'`" ]; then
        echo "  $HOME/$(basename ${dotfile}) is identical and will not be replaced."
    else
        echo "  $HOME/$(basename ${dotfile}) does not exist or is different."
        if [ -f $HOME/${dotfile} ]; then
            echo "    Backing up $HOME/${dotfile} as $HOME/${dotfile}.backup."
            mv $HOME/${dotfile} $HOME/${dotfile}.backup
        fi
        echo "    Making symbolic link..."
        ln -s $(realpath ${dotfile}) $HOME/$(basename ${dotfile})
    fi
done

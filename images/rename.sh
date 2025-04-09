#! /usr/bin/bash

set -e
cd $(dirname $0)

FILES=$(ls)
for file in ${FILES}
do
    if [ "$file" == "rename.sh" ]
    then
        continue
    fi

    array=($(md5sum $file))
    name="${array[0]}.${file#*.}"
    
    if [ "$name" == "$file" ]
    then
        continue
    fi

    mv -f "$file" "$name"
done

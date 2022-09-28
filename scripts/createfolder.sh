#!/bin/bash
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "$script_dir"
cd /data3/
echo "inside data3"
echo ""
namespace_dir=("namespace1/configs" "namespace2/configs")
echo "${namespace_dir[0]}"
for folder in ${namespace_dir[@]}
    do
        if [ -d $folder ];
        then
            echo "Directory $folder Already Exists"
            echo "skipping creation of $folder"
        else
            mkdir -p namespace1/configs namespace2/configs
            echo "Directory ${namespace_dir[i]} created"
        fi

done
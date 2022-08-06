#!/bin/bash

cd /data3/
echo "inside data3"
arr=(prakhar ankit 1 rishabh manish abhinav)
namespace_dir=("namespace1/configs" "namespace2/configs")
echo "${namespace_dir[0]}"
for i in {0..${#namespace_dir[@]}..1}
    do
        if -d ${namespace_dir[i]}
        then
            echo "Directory Already Exists"
        else
            mkdir -p namespace1/configs namespace2/configs
            echo "Directory ${namespace_dir[i]} created"
        fi
done
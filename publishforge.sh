#!/bin/sh
if [ -z "$1" ]
then
  echo "Please put a directory/module name"
elif [ -d "$1" ]
  then
    pushd $1
    rake module:clean
    rake module:bump_commit
    rake build
    rake module:push
    popd
  else
    echo "That directory/module not exist!"
fi

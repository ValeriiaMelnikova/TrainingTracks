#!/bin/bash

#clean sources
echo "Cleaning sources..."
cd simpleFsiFunctionObject; wclean; cd ../

#clean cases
cd cases

FILES=`ls`

for FILE in $FILES
do
    if [ -d $FILE ]
    then
        echo "Cleaning tutorial $FILE"
        cd $FILE
        ./cleanCase.sh
        cd ../
    fi
done

#
# Go up
#
cd ../

#
#END-OF-FILE
#



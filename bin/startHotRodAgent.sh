#!/bin/sh

. "bin/setGrinderEnv.sh"
#java -cp $GRINDER_CP net.grinder.Console &
#sleep 5
java -cp $GRINDER_CP -Dgrinder.script=hotrod.py net.grinder.Grinder $GRINDER_PROPERTIES


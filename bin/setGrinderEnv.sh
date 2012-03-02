#!/bin/sh

SPYMEMCACHED_HOME=/Users/z/Unshared/JBoss/thirdparty/spymemcached-2.4.2
INFINISPAN_HOME=/Users/uaarkoti/Sandbox/JDG/jboss-datagrid-library-6.0.0.ER2-redhat-1

GRINDER_HOME=/Users/uaarkoti/Sandbox/MISC/grinder-3.7.1

GRINDER_CP=$GRINDER_HOME/lib/grinder.jar
GRINDER_CP=$GRINDER_CP:$SPYMEMCACHED_HOME/spymemcached.jar
GRINDER_CP=$GRINDER_CP:$INFINISPAN_HOME/infinispan-core-5.1.2.ER2-redhat-1.jar
GRINDER_CP=$GRINDER_CP:$INFINISPAN_HOME/lib/jboss-logging-3.1.0.GA-redhat-1.jar
GRINDER_CP=$GRINDER_CP:$INFINISPAN_HOME/lib/jboss-marshalling-1.3.9.GA-redhat-1.jar
GRINDER_CP=$GRINDER_CP:$INFINISPAN_HOME/lib/jboss-marshalling-river-1.3.9.GA-redhat-1.jar
GRINDER_CP=$GRINDER_CP:$INFINISPAN_HOME/modules/cachestores/remote/lib/infinispan-client-hotrod-5.1.2.ER2-redhat-1.jar
GRINDER_CP=$GRINDER_CP:$INFINISPAN_HOME/modules/cachestores/remote/lib/commons-pool-1.5.6-redhat-1.jar

GRINDER_PROPERTIES=/Users/uaarkoti/Sandbox/MISC/JDG-LOAD-TEST/grinder.properties

export SERVER_ADDRESS=192.168.1.66

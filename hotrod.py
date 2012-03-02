# Hot Rod server test runner

import abstractServer
from org.infinispan.client.hotrod import RemoteCacheManager
from java.util import Properties

p = Properties()
#p.put("infinispan.client.hotrod.server_list", "192.168.1.65:11222;192.168.1.66:11222")
p.put("infinispan.client.hotrod.server_list", "192.168.1.65:11222")

remoteCacheManager = RemoteCacheManager(p)

class TestRunner(abstractServer.TestRunner):

   def doInit(self):
      self.remoteCache = remoteCacheManager.getCache()

   def doPut(self, key, value):
      self.remoteCache.put(key, value)

   def doGet(self, key):
      return self.remoteCache.get(key)

   def stop(self):
      self.remoteCache.stop()


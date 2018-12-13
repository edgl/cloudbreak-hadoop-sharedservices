import sys
import json

j = ''.join([line for line in sys.stdin])

j = json.loads(j)

for i in j["instanceGroups"]:
 #print(i["metadata"][0])
 if 'master' in i["metadata"][0]["instanceGroup"]:
   print('"%s": "%s",' % (i["metadata"][0]["instanceGroup"], i["metadata"][0]["privateIp"]))

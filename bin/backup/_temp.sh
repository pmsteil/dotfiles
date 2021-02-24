# reindex all 4 prod servers
# this is necessary becuase we couldn't get the certs installed properly on
# railo in order to call cfhttp on these urls correctly.
#
# this script is called directly via cfexecute from /adminCacheReset.cfm
#
curl -k -G --data-urlencode "act=resetCache" --data-urlencode "auth=1" --data-urlencode "bypassSecure=1" https://direct1.worthingtondirect.com/index.cfm
curl -k -G --data-urlencode "act=resetCache" --data-urlencode "auth=1" --data-urlencode "bypassSecure=1" https://direct2.worthingtondirect.com/index.cfm
curl -k -G --data-urlencode "act=resetCache" --data-urlencode "auth=1" --data-urlencode "bypassSecure=1" https://direct3.worthingtondirect.com/index.cfm
curl -k -G --data-urlencode "act=resetCache" --data-urlencode "auth=1" --data-urlencode "bypassSecure=1" https://direct4.worthingtondirect.com/index.cfm


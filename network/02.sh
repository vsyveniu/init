ifconfig | grep "inet " | grep -v 127.0.0.1

#if ethernet is en0, which is always must be(not sure) the command below can be used
#ipconfig getifaddr en0
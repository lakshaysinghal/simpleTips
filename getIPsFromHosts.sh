#!/bin/sh

# Simple one-liner to get IPs from Hostname. the Output is comma separated that can be pasted in Excel diretly
# Usage:
# ./getIPsFromHosts.sh <Path to file with hostnames>

for url in `cat $1`; do echo $url "," `dig +short $url`; done

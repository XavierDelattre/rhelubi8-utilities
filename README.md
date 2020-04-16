# Red Hat Universal Base Image 8 with few utilities

A simple docker image based on `registry.access.redhat.com/ubi8/ubi:8.1-406` with a few tools installed on top: 
* pinentry (for gpg)
* unzip
* wget
* rsync
* aws 
* mc (minio command line tool)
* oc (openshift 3.11 command line tool)
* mysql client
* jq (1.6)
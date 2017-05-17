#!/bin/bash

find ./lib/cfnlego/resources/ -iname *.yaml  | cut -f6,7,8 -d/ | sed 's/.yaml//' | sed "s/\//::/g"| sort | uniq 

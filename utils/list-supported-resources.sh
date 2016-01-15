#!/bin/bash

find . ./lib/cfnlego/resources/ | grep yaml |cut -f5,6,7 -d/ | sed 's/.yaml//' | sed "s/\//::/g"| sort | uniq 

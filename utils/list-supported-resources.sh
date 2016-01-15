#!/bin/bash

find . ./lib/cfnlego/resources/ | grep yaml |cut -f5,6 -d/ | sed 's/.yaml//' | sed "s/\//::/"| sort | uniq | sed 's/^/AWS::/'

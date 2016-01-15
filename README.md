cfnlego
========

[![Build Status](https://travis-ci.org/allinwonder/cfnlego.svg)](https://travis-ci.org/allinwonder/cfnlego) [![Gem Version](https://badge.fury.io/rb/cfnlego.svg)](http://badge.fury.io/rb/cfnlego) [![Code Climate](https://codeclimate.com/github/allinwonder/cfnlego/badges/gpa.svg)](https://codeclimate.com/github/allinwonder/cfnlego)

### Description

cfnlego is built to quickly bootstrap CloudFormation development with cfndsl.

It provides templates for all (WIP) AWS Resources and simply bake them into a template

### How to use

to generate a `cfndsl` template, provide the resource types and their logical names in the command line.

```sh
$ gem install cfnlego

$ cfnlego --help
Usage: cfnlego --reousrce resource [options]
    -r RESOURCE_TYPE,RESOURCE_LOGICAL_NAME,
        --resource                   Add resource type and logical name
    -i, --indent TOKEN               Use TOKEN for indent character (default space)
    -c, --indent-count [COUNT]       Count of characters to use for indenting. (default: 2)
    -h, --help                       Prints this help
Example:
  cfnlego                                           \
    --reousrce AutoScaling::AutoScalingGroup,ASG    \
    --reousrce IAM::Role,Role                       \
    --reousrce IAM::InstanceProfile,InstanceProfile \
```

### Current Supported Resources

- AWS::AutoScaling::AutoScalingGroup
- AWS::AutoScaling::LaunchConfiguration
- AWS::AutoScaling::LifecycleHook
- AWS::AutoScaling::ScalingPolicy
- AWS::CloudFront::Distribution
- AWS::CloudWatch::Alarm
- AWS::EC2::DHCPOptions
- AWS::EC2::EIP
- AWS::EC2::Instance
- AWS::EC2::InternetGateway
- AWS::EC2::SecurityGroup
- AWS::EC2::SpotFleet
- AWS::EC2::Subnet
- AWS::EC2::VPC
- AWS::EC2::VPCDHCPOptionsAssociation
- AWS::EC2::VPCEndpoint
- AWS::EC2::VPCGatewayAttachment
- AWS::ECS::Cluster
- AWS::ECS::Service
- AWS::ECS::TaskDefinition
- AWS::ElasticLoadBalancing::LoadBalancer
- AWS::IAM::InstanceProfile
- AWS::IAM::ManagedPolicy
- AWS::IAM::Role
- AWS::Kinesis::Stream
- AWS::KMS::Key
- AWS::Lambda::EventSourceMapping
- AWS::Lambda::Function
- AWS::Lambda::Permission
- AWS::Route53::HealthCheck
- AWS::Route53::HostedZone
- AWS::Route53::RecordSet
- AWS::Route53::RecordSetGroup
- AWS::SNS::Topic
- AWS::SNS::TopicPolicy


### License

The MIT License (MIT)

Copyright (c) 2015 [Kevin Yung](mailto:me@howareyoukevin.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

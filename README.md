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
    -l, --list                       List supported resources
    -c, --indent-count [COUNT]       Count of characters to use for indenting. (default: 2)
    -h, --help                       Prints this help
    -v, --version                    Show version
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
- AWS::EC2::NatGateway
- AWS::EC2::NetworkAcl
- AWS::EC2::NetworkAclEntry
- AWS::EC2::Route
- AWS::EC2::RouteTable
- AWS::EC2::SecurityGroup
- AWS::EC2::SpotFleet
- AWS::EC2::Subnet
- AWS::EC2::SubnetNetworkAclAssociation
- AWS::EC2::SubnetRouteTableAssociation
- AWS::EC2::VPC
- AWS::EC2::VPCDHCPOptionsAssociation
- AWS::EC2::VPCEndpoint
- AWS::EC2::VPCGatewayAttachment
- AWS::ECS::Cluster
- AWS::ECS::Service
- AWS::ECS::TaskDefinition
- AWS::ElastiCache::CacheCluster
- AWS::ElastiCache::ParameterGroup
- AWS::ElastiCache::ReplicationGroup
- AWS::ElastiCache::SecurityGroup
- AWS::ElastiCache::SecurityGroupIngress
- AWS::ElastiCache::SubnetGroup
- AWS::ElasticLoadBalancing::LoadBalancer
- AWS::Events::Rule
- AWS::IAM::InstanceProfile
- AWS::IAM::ManagedPolicy
- AWS::IAM::Role
- AWS::KMS::Key
- AWS::Kinesis::Stream
- AWS::Lambda::EventSourceMapping
- AWS::Lambda::Function
- AWS::Lambda::Permission
- AWS::Logs::Destination
- AWS::Logs::LogGroup
- AWS::Logs::LogStream
- AWS::Logs::MetricFilter
- AWS::Logs::SubscriptionFilter
- AWS::Route53::HealthCheck
- AWS::Route53::HostedZone
- AWS::Route53::RecordSet
- AWS::Route53::RecordSetGroup
- AWS::S3::Bucket
- AWS::SNS::Topic
- AWS::SNS::TopicPolicy
- AWS::SQS::Queue
- AWS::SQS::QueuePolicy
- AWS::WAF::ByteMatchSet
- AWS::WAF::IPSet
- AWS::WAF::Rule
- AWS::WAF::SizeConstraintSet
- AWS::WAF::SqlInjectionMatchSet
- AWS::WAF::WebACL
- AWS::WAF::XssMatchSet

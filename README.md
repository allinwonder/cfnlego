cfnlego
========

### description

cfnlego is built to quickly bootstrap CloudFormation development with cfndsl.

It provides templates for all AWS Resources and simpliy bake them into a template

### How to use

to generate a `cfndsl` template, provide the resource types and their logical names in the command line.

```sh
$ gem install cfnlego

$ cfnlego --help
Usage: cfnlego --reousrce resource [options]
    -r RESOURCE_TYPE,RESOURCE_LOGICAL_NAME
        --resource                   Add resource type and logical name
    -h, --help                       Prints this help
Example:
  cfnlego                                           \
    --reousrce AutoScaling::AutoScalingGroup,ASG    \
    --reousrce IAM::Role,Role                       \
    --reousrce IAM::InstanceProfile,InstanceProfile \

```

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

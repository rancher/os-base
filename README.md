# RancherOS Base System

This repo contains the Linux kernel and system programs for RancherOS.  RancherOS is built from [buildroot](https://buildroot.org/).

## Building

You need Docker 1.5+

    make

## Using a custom version of os-base in RancherOS

```
# Clone repos
git clone https://github.com/rancherio/os.git
git clone https://github.com/rancherio/os-base.git

# Build os-base
cd os-base
make

# Copy custom to a HTTP website so that you can download it
# cp dist/artifacts/os-base.tar.xz ...

# Build RancherOS
cd ../os
# Update OS_BASE_URL_amd64 and OS_BASE_URL_arm64 in Dockerfile.dapper
# Run make
make
```
## Contact
For bugs, questions, comments, corrections, suggestions, etc., open an issue in
 [rancher/os](//github.com/rancher/os/issues) with a title starting with `[os-base] `.

Or just [click here](//github.com/rancher/os/issues/new?title=%5Bos-base%5D%20) to create a new issue.


# License
Copyright (c) 2014-2019 [Rancher Labs, Inc.](http://rancher.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


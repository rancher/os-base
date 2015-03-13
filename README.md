# RancherOS Base System

This repo contains the Linux kernel and system programs for RancherOS.  RancherOS is built from [buildroot](http://buildroot.uclibc.org/).

## Building

You need Docker 1.5+

    ./build.sh

## Using a custom version of os-base in RancherOS

```
# Clone repos
git clone https://github.com/rancherio/os.git
git clone https://github.com/rancherio/os-base.git

# Build os-base
cd os-base
./build.sh

# Copy custom
cp dist/artifacts/os-base.tar.xz ../os/assets

# Build RancherOS
cd ../os
sed -i -e 's/^\(download.*os-base.*\)/#\1/' scripts/download
./build.sh
```


# License
Copyright (c) 2014-2015 [Rancher Labs, Inc.](http://rancher.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

[http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


#!/bin/bash

# MacOS
wget -O ocb https://github.com/open-telemetry/opentelemetry-collector/releases/download/cmd%2Fbuilder%2Fv0.88.0/ocb_0.91.0_darwin_amd64 

# Linux x64
#wget -O ocb https://github.com/open-telemetry/opentelemetry-collector/releases/download/cmd%2Fbuilder%2Fv0.91.0/ocb_0.91.0_linux_amd64

chmod +x ocb
./ocb --config builder-config.yaml

#!/bin/bash

export OS_AUTH_URL=http://192.168.210.237:5000/v2.0
export OS_TENANT_NAME="mini-mon"
export OS_PROJECT_NAME="mini-mon"
export OS_USERNAME="monasca-agent"
export OS_PASSWORD="password"
export OS_IDENTITY_API_VERSION=2
openstack token issue

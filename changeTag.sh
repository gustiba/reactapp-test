#! /bin/bash

sed 's/tagVersion/$1/g' reactapp-deployment.yml > reactapp-config.k8s.yaml
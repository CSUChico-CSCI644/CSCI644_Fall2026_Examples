#!/bin/bash

kubectl create configmap nginx-config --from-file=NGINX/default.conf 
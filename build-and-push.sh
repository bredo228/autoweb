#!/bin/sh
docker build -t forge.localtoast.xyz/bredo/autoweb:latest .
docker push forge.localtoast.xyz/bredo/autoweb:latest

#!/bin/sh
docker build -t forge.localtoast.xyz/bredo/autoweb:latest .
docker compose up

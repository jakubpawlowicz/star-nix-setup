#!/usr/bin/env bash

sudo rsync -prtvz etc/nixos/ /etc/nixos/
rsync -prtvz home/jakub /home/jakub/

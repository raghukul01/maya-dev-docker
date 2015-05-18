#!/bin/bash
uid=$(ls -nd /app | cut -d" " -f3)
useradd -u $uid hackcave
chown -R hackcave /home/hackcave
su hackcave -c "export PATH=$DART_SDK/bin:$PATH && $@"

#!/bin/bash
set -v
cd /

ls -la

/root/bin/digdag server -c /digdag.properties

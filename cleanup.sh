#!/bin/bash
set -eux

# Stop agent service
systemctl stop ds_agent || true

# Remove agent files
rm -rf /opt/TrendMicro
rm -rf /opt/ds_agent
rm -rf /tmp/v1es*
rm -rf /tmp/.dsa-deploy

# Clear cloud-init data so UserData runs on next boot
rm -rf /var/lib/cloud/*


echo "[INFO] Cleanup done. Ready for AMI creation."

#!/bin/bash
set -eux

# ログディレクトリ作成
mkdir -p /var/log/v1es
exec > >(tee -a /var/log/v1es/install.log) 2>&1

# スクリプトを S3 から取得（あなたのバケットとパスに応じて変更）
aws s3 cp s3://deepsecurity-test/scripts/deploy_v1es.sh /tmp/deploy_v1es.sh
chmod +x /tmp/deploy_v1es.sh

# インストールスクリプトの実行
/tmp/deploy_v1es.sh

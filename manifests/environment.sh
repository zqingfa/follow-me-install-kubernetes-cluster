#!/usr/bin/bash

# 服务网段 (Service CIDR），部署前必须路由不可达
export SERVICE_CIDR="10.254.0.0/16"
# POD 网段 (Cluster CIDR），必须路由可达(flanneld保证)
export CLUSTER_CIDR="172.30.0.0/16"
# 服务端口范围 (NodePort CIDR)
export NODE_PORT_RANGE="8400-9000"
# etcd 集群监客户端连接的地列表，为保证高可至少指定两台机器
export ETCD_ENDPOINTS="https://10.64.3.7:2379,https://10.64.3.8:2379,https://10.66.3.86:2379"
# flanneld 从 etcd 集群获取网络配置的 key
export FLANNEL_ETCD_PREFIX="/kubernetes/network"
# kubernetes 服务IP, (一般是 SERVICE_CIDR 中第一个IP)
export CLUSTER_KUBERNETES_SVC_IP="10.254.0.1"
# 集群 DNS 服务 IP (从 SERVICE_CIDR 中预分配)
export CLUSTER_DNS_SVC_IP="10.254.0.2"
# 集群 DNS 域名
export CLUSTER_DNS_DOMAIN="cluster.local."
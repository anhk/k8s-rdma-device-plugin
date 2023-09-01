#FROM mellanox/mofed421_docker

FROM ubuntu

RUN apt update -y && apt install -y libibverbs1 ibverbs-utils ibverbs-providers rdma-core

COPY bin/k8s-rdma-device-plugin /usr/local/bin/

ENTRYPOINT ["k8s-rdma-device-plugin"]

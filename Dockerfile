
FROM ubuntu:20.04

# 避免安装过程中交互提示
ENV DEBIAN_FRONTEND=noninteractive

# 更新软件包列表并安装所需工具
RUN apt-get update && apt-get install -y \
    net-tools \
    libncurses5-dev \
    libssl-dev \
    build-essential \
    openssl \
    qemu-system-arm \
    gcc-aarch64-linux-gnu \
    git \
    bison \
    flex \
    bc \
    vim \
    cmake \
    python3-dev \
    gdb-multiarch \
    openjdk-13-jre \
    trace-cmd \
    kernelshark \
    bpfcc-tools \
    cppcheck \
    docker.io \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

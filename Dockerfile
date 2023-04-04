FROM ubuntu:20.04

RUN sed -i  's/http\:\/\/archive.ubuntu.com/http\:\/\/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
    apt update && \
    apt install tzdata -y &&\
    ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt install net-tools libncurses5-dev libssl-dev build-essential openssl qemu-system-misc gcc-riscv64-linux-gnu git bison flex bc vim universal-ctags cscope gdb-multiarch libsdl2-dev libreadline-dev -y 

CMD ["/usr/bin/bash" ]

## 简介

本 repo 是本人用于练习 [RISC-V体系结构：编程与实践实验题](https://github.com/running-linux-riscv/riscv_programming_practice), 在不愿意装虚拟机的情况下使用 Docker 的一种权宜之计.
如果使用本仓库的方法对你产生经济或者精神损害, 本人不负任何责任.

## 手动创建

由于此书使用 ubuntu 20.04 作为实验系统. 使用和书籍相对应的版本遇到的坑会比较少.

此处假设环境中已有 Docker

```bash
docker pull ubuntu:20.04
git clone https://github.com/running-linux-riscv/riscv_programming_practice.git
cd riscv_programming_practice
docker exec -idt -v $(pwd):/riscv_programing_pratice --name riscv_programing_pratice ubuntu:20.04
```

## 其他方式

本仓库还有一份 Dockerfile .请随缘使用

## 相关参考

https://dev.to/0xbf/set-timezone-in-your-docker-image-d22#
https://www.runoob.com/docker/docker-dockerfile.html

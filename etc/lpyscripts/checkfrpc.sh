# !/bin/bash

if [ ! -f /tmp/frpc ]; then
        (cd /tmp/; curl -LO https://github.com/fatedier/frp/releases/download/v0.33.0/frp_0.33.0_linux_mipsle.tar.gz)
        tar -xzvf /tmp/frp_0.33.0_linux_mipsle.tar.gz frp_0.33.0_linux_mipsle/frpc -C /tmp
        mv /tmp/frp_0.33.0_linux_mipsle/frpc /tmp/frpc
        rm /tmp/frp_0.33.0_linux_mipsle.tar.gz
        rmdir /tmp/frp_0.33.0_linux_mipsle
        /etc/init.d/frpc restart
fi
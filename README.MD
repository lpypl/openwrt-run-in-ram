基本原理是把`/usr/bin/frpc`链接到`/tmp/frpc`，因为`/tmp/`占用的是RAM空间，虽然机器的flash芯片空间小，但是RAM足够大了，只要通过定期任务检查`/tmp/frpc`是否存在，若不存在就下载并重启frpc服务即可。这个frpc服务应该是luci-frpc创建的，配合使用即可。
![](https://cdn.jsdelivr.net/gh/lpypl/picgo-repo@main/data/20210111173222.png)

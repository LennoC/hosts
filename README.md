##<自修改>
sy618不再更新. 修改Padavan脚本地址指向googlehost项目。
>https://raw.githubusercontent.com/LennoC/hosts/master/dnsmasq/sh/start.sh
>https://raw.githubusercontent.com/LennoC/hosts/master/dnsmasq/sh/del.sh
>https://raw.githubusercontent.com/LennoC/hosts/master/dnsmasq/sh/setting.sh
>https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/dnsmasq.conf

##Padavan脚本
*一键运行命令：
>mkdir -p /etc/storage/dnsmasq/dns;wget --no-check-certificate https://raw.githubusercontent.com/LennoC/hosts/master/dnsmasq/sh/setting.sh -O /etc/storage/dnsmasq/dns/setting.sh;sh /etc/storage/dnsmasq/dns/setting.sh
*一键还原命令：
>sh /etc/storage/dnsmasq/dns/del.sh

<新常态>：9.19号后，封锁持续升级，这只是刚刚开始。防火墙已具备https链接识别与重置能力，都是通过关键词匹配明文信息，就如同以前针对http链接重置一样高效。YouTube、Facebook、Twitter、Dropbox等已经被加入重点封锁名单。[v2帖子](https://www.v2ex.com/t/395195)抓包发现：“在浏览器发出 TLS Client Hello 之后，就收到了 FIN,ACK、RST,ACK 等一系列试图断开连接的包，结合 VPS 那边抓包来看（ VPS 同样收到了类似的一系列包），这些包应该是伪造的。在 Wireshark 里展开那个包含 Client Hello 的包，可以看到 Server Name Indication extension 里有一个字段是 google.com ” 。除了Client Hello握手包是明文传输的，CA证书也是明文传输，再加上长期的流量统计与一些未知的特征识别，这些信息足够防火墙知道你在访问什么。使用sni服务器IP反代同样也会被链接重置，sni证书也是明文传输。拦截只针对经过出口路由上。具体原理与后续研究请看[googlehosts项目的试验](https://github.com/googlehosts/hosts/issues/87)、[v2帖子](https://www.v2ex.com/t/395195)。

虽然还是可以用流量中转等方式继续使用hosts，但个人觉得靠hosts翻墙意义已不大！现决定暂停此项目维护！建议自备代理，不要依赖于hosts来上网。后会有期！！

## hosts/dnsmasq订阅方案
- [hosts订阅推荐方案](https://github.com/sy618/hosts/blob/master/md/hosts%E8%AE%A2%E9%98%85%E6%96%B9%E6%A1%88.md)
- [路由器方案：hosts+dnsmasq规则、padavan脚本](https://github.com/sy618/hosts/blob/master/dnsmasq/dnsmasq.md)
> [安全性问题？建议先看看](https://github.com/sy618/hosts/tree/master/dnsmasq/%E5%AE%89%E5%85%A8%E9%97%AE%E9%A2%98)

## 自动更新hosts/dnsmasq、工具
* [安卓手机定时自动更新hosts，tasker脚本与教程](https://github.com/sy618/hosts/tree/master/%E5%AE%89%E5%8D%93%E8%87%AA%E5%8A%A8%E6%9B%B4%E6%96%B0hosts)
* [路由器自动更新dnsmasq教程与padavan脚本](https://github.com/sy618/hosts/blob/master/dnsmasq/dnsmasq.md)
* [SwitchHosts：PC端更新hosts软件，作者：oldj](https://github.com/oldj/SwitchHosts/blob/master/README.md)，下载：[【github】](https://github.com/oldj/SwitchHosts/releases)、[【网站】](https://oldj.github.io/SwitchHosts)
* [Daedalus：安卓免root使用DNS/hosts/dnsmasq规则软件，项目作者iTXTech ](https://github.com/iTXTech/Daedalus)。下载：[【play商店】](https://play.google.com/store/apps/details?id=org.itxtech.daedalus)、[【github】](https://github.com/iTXTech/Daedalus/releases)

### China AD hosts，by vokins
* 有广告或误杀问题请到以下项目反馈！
* https://github.com/vokins/yhosts/

### 免责与提醒
* 项目大部分域名都是解析到官方IP，但部分功能可能需要依靠sni反向代理（运营商提供的缓存服务器）才能实现，不保证安全性。不喜勿用！
> - 谷歌全家桶
> - play商店下载 `sn-*.gvt1.com`
> - ~~YouTube `*.youtube.com`~~
> - ~~YouTube图片 `*.ytimg.com`~~
> - ~~YouTube视频播放 `sn-*.googlevideo.com`~~
> - ~~Twitter `*.twitter.com`~~
> - ~~Facebook `*.facebook.com`~~

### other
* [使用内置代理上telegram方法](https://github.com/sy618/hosts/blob/master/md/telegram.md)
* [tg](https://t.me/adfqhosts)


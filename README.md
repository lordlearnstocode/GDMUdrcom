# GDMUdrcom
一个shell语言的GDMU自动登陆校园网脚本
---
将drcom.sh中如下代码块内XXX YYY分别改为校园网账号和对应密码后,上传至openwrt并赋予执行权限运行即可
```shell
eval account1="XXX"  
eval password1="XXX"  
eval account2="YYY"  
eval password2="YYY"
```
成功运行应有以下输出
```shell
dr1004({"result":"1","msg":"\u8ba4\u8bc1\u6210\u529f"})
```  
---
# FAQ  

提示  
```shell
dr1004({"result":"0","msg":"QUM5OTk=","ret_code":2})
```  
出现这个消息说明你已经登陆了，或者因为多设备而被userid locked，可以先注销或者等5分钟后再试  

---
>代码改自https://blog.csdn.net/Reven_L/article/details/122256177 感谢作者  

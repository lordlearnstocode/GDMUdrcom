#!/bin/bash
#账号数量,可扩展
Total=2
#数组赋值(busybox不直接支持数组,只能用这种蹩脚方式)
eval account1="XXX"
eval password1="XXX"
eval account2="YYY"
eval password2="YYY"
amount=0
#根据ifconfig结果筛选出IP
ifconfig | grep -A1 -n 'eth' | grep inet | awk '{print $3}' | awk -F : '{print $2}' | while read ip; do
    let amount++
    if [ ! -n "$ip" ]; then
        let amount--
        continue
    fi
    if [ $amount -gt $Total ]; then
        break
    fi
    #从数组中取值
    eval ac="\$account$amount"
    eval pw="\$password$amount"
    curl "http://172.20.255.14:801/eportal/?c=Portal&a=login&callback=dr1004&login_method=1&user_account=%2C0%2C${ac}&user_password=${pw}&wlan_user_ip=${ip}&wlan_user_ipv6=&wlan_user_mac=000000000000&wlan_ac_ip=&wlan_ac_name=&jsVersion=3.3.3&v=7032"
done

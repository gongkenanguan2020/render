#!/bin/sh

#请修改为自己的UUID
export UUID=470c1981-3bc3-4325-8bc2-9d372f294440

#请修改为自己设置的伪装站，不要带https://github.com/wulabing/3DCEList/archive/master.zip

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'

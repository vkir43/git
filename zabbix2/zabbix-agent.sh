useradd $1 -s /bin/bash -d /home/test
mkdir /home/test
chown -R test:test /home/test
echo ''$1'    ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

usermod --password $(openssl passwd -6 $2) root
usermod --password $(openssl passwd -6 $2) $1

if [ $3 == "true" ]; then apt upgrade -y; else echo '$3'=$3; fi

rm -Rf /etc/hosts

echo "127.0.0.1	localhost.localdomain	localhost" >> /etc/hosts
echo "$5	$4.localdomain	$4" >> /etc/hosts

wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4%2Bdebian11_all.deb
dpkg -i zabbix-release_6.0-4+debian11_all.deb
apt update 
apt install zabbix-agent -y
sed -i "s/Server=127.0.0.1/Server=$6/g" /etc/zabbix/zabbix_agentd.conf
echo 'UserParameter=custom_echo[*],echo $1' >> /etc/zabbix/zabbix_agentd.conf
echo 'UserParameter=my_script_1[*], /etc/zabbix/script.sh $1' > /etc/zabbix/zabbix_agentd.d/test_user_parameter.conf
echo 'UserParameter=my_script_2[*], python3 /etc/zabbix/script.py $1 $2' > /etc/zabbix/zabbix_agentd.d/test_user_parameter.conf
systemctl restart zabbix-agent
systemctl enable zabbix-agent

if [[ ! -f /etc/zabbix/script.sh ]]
then
    echo '#!/bin/bash' >> /etc/zabbix/script.sh
    echo 'if [[ $1 = 1 ]]; then' >> /etc/zabbix/script.sh
    echo 'echo Kirienko V.V.' >> /etc/zabbix/script.sh
    echo 'elif [[ $1 = 2 ]]; then' >> /etc/zabbix/script.sh
    echo 'date +%x' >> /etc/zabbix/script.sh
    echo 'else echo Error;' >> /etc/zabbix/script.sh
    echo 'fi;' >> /etc/zabbix/script.sh
fi
chmod +X /etc/zabbix/script.sh

if [[ ! -f /etc/zabbix/script.py ]]
then
    echo 'import sys' >> /etc/zabbix/script.py
    echo 'import os' >> /etc/zabbix/script.py
    echo 'import re' >> /etc/zabbix/script.py
    echo 'from datetime import date' >> /etc/zabbix/script.py
    echo 'if (sys.argv[1] == "-ping"): # Если -ping' >> /etc/zabbix/script.py
    echo '        result=os.popen("ping -c 1 " + sys.argv[2]).read() # Делаем пинг по заданному адресу' >> /etc/zabbix/script.py
    echo '        result=re.findall(r"time=(.*) ms", result) # Выдёргиваем из результата время' >> /etc/zabbix/script.py
    echo '        print(result[0]) # Выводим результат в консоль' >> /etc/zabbix/script.py
    echo 'elif (sys.argv[1] == "-simple_print"): # Если simple_print ' >> /etc/zabbix/script.py
    echo '        print(sys.argv[2]) # Выводим в консоль содержимое sys.arvg[2]' >> /etc/zabbix/script.py
    echo 'elif (sys.argv[1] == '1'):' >> /etc/zabbix/script.py
    echo '        print(f"Kirienko V.V.")' >> /etc/zabbix/script.py
    echo 'elif (sys.argv[1] == '2'):' >> /etc/zabbix/script.py
    echo '        curr_date=date.today()' >> /etc/zabbix/script.py
    echo '        print(curr_date)' >> /etc/zabbix/script.py
    echo 'else: # Во всех остальных случаях' >> /etc/zabbix/script.py
    echo '        print(f"unknown input: {sys.argv[1]}") # Выводим непонятый запрос в консоль.' >> /etc/zabbix/script.py
fi

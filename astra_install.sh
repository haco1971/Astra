#!/bin/bash
echo "Se Instaleaza Astra"
wget -q http://dev.cesbo.com/download/astra/5.62-rc9/x86/linux-64bit/astra > /dev/null
chmod +x astra > /dev/null
sudo mv astra /usr/bin/ > /dev/null
sudo mkdir /etc/astra > /dev/null
echo "Sa instalat cu succes..."
echo "Se porneste Astra (Port 5555)"

shell_exec("echo 'astra -c /etc/astra/iptv.conf -p 5555' >> /etc/rc.local");

    
    shell_exec("echo 'sleep 10' >> /etc/rc.local");
    shell_exec("echo 'exit 0' >> /etc/rc.local");
    shell_exec("astra -c /etc/astra/iptv.conf -p 5555");

fi

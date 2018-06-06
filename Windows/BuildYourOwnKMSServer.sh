wget http://www.dwhd.org/wp-content/uploads/2015/07/vlmcsd-svn812-2015-08-30-Hotbird64.zip
unzip -q vlmcsd-svn812-2015-08-30-Hotbird64.zip -d /usr/local/
ln -sv /usr/local/vlmcsd-svn812-2015-08-30-Hotbird64/ /usr/local/KMS
echo "export PATH=/usr/local/KMS/binaries/Linux/intel/static:\$PATH" > /etc/profile.d/vlmcs.sh
source /etc/profile.d/vlmcs.sh
chmod +x /usr/local/KMS/binaries/Linux/intel/static/*
echo "vlmcsd-x64-musl-static" >> /etc/rc.local
vlmcsd-x64-musl-static
#记得防火墙开放TCP的1688端口和关闭SELinux
#下面是快速即时生效+永久关闭SELinux的命令
sed -i 's/^SELINUX=.*/#&/;s/^SELINUXTYPE=.*/#&/;/SELINUX=.*/a SELINUX=disabled' /etc/sysconfig/selinux && /usr/sbin/setenforce 0
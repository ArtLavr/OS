cat '/etc/shadow'
cat "/etc/group"
cat "/etc/passwd"

groupadd users
useradd -G mail,users -d /home/nouser -u 1777 -m test1
id test1
cat "/etc/passwd"
usermod -u 1001 test1
id test1
cat "/etc/passwd"
cat "/etc/shadow"
passwd test1
cat "/etc/shadow"

useradd test2
id test2
ls /home/
usermod --login test3 test2
cat "/etc/group"
userdel -r test3
cat "/etc/group"

chage -d "2019-12-31" test1
chage -M 366 test1
chage --list test1
usermod -L test1
cat "/etc/shadow"

groupadd -g 1010 xusers

usermod -a -G xusers $USER
cat "/etc/group"

groupmod -n yusers xusers
cat "/etc/group"

gpasswd -d $USER yusers
userdel -r test1
groupdel test2
groupdel yusers
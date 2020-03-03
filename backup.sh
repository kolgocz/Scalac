#!/usr/bin/env bash
echo -e "Input the archive name: \c"
read name
echo -e "Input password: \c"
read -s pass
echo ""
echo -e "Input the directory: \c"
read dir

zip --password $pass -r /home/$name.zip $dir

scp /home/$name.zip root@192.168.0.100:/path/to/destination

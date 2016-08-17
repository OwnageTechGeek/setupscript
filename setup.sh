#bin/bash

while true; do
    echo "Copyright 2016, Davis Enterprises LLC"
    echo "Davis Enterprises LLC Setup Script"
    echo "Reading hostname data."
    echo "Setup will begin shortly."
    hostname='cat /etc/hostname'
    server='$1'
    echo "$hostname"
    mkdir /srv/minecraft
    mkdir /srv/minecraft/configuration
    mkdir /srv/minecraft/servers
    mkdir /srv/minecraft/zip
    mkdir /srv/minecraft/backups
    mkdir /srv/minecraft/archives
    mkdir /srv/minecraft/scripts
    mkdir /srv/minecraft/logs
    mkdir /srv/minecraft/temp
    cd /srv/minecraft/temp
    cp /etc/hostname /srv/minecraft/configuration/hostname
    # Setups file system in order for the script to progress.
    
    # Server is the hostname of the server that is hosting the files for this server to download.
    # Hostname is the name of this server that is being configured with this script.
    hostname='cat /srv/minecraft/configuration/hostname'
    echo "The value of \"hostname\" is $hostname."
    wget http://$server/scripts.zip
    wget http://$server/$hostname/configuration.zip
    wget http://$server/$hostname/temp.zip
    mv ./scripts.zip /srv/minecraft/scripts
    mv ./configuration.zip /srv/minecraft/configuration
    mv ./temp.zip /srv/minecraft/temp
    cd /srv/minecraft/scripts
    unzip -o /srv/minecraft/scripts/scripts.zip
    cd /srv/minecraft/configuration
    unzip -o /srv/minecraft/configuration/configuration.zip
    mv /srv/minecraft/configuration/configuration.zip /srv/minecraft/temp/garbage/configuration.zip
    cd /srv/minecraft/temp
    unzip -o /srv/minecraft/temp/temp.zip
    mv /srv/minecraft/temp/temp.zip /srv/minecraft/temp/garbage/temp.zip
    sh /srv/minecraft/scripts/setup/1.sh
    
    esac
done

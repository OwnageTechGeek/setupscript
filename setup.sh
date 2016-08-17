#bin/bash

while true; do
    echo "Copyright 2016, Davis Enterprises LLC"
    echo "Davis Enterprises LLC Setup Script"
    echo "Reading hostname data."
    echo "Setup will begin shortly."
    hostname='cat /etc/hostname'
    echo "$hostname"
    mkdir /srv/minecraft
    mkdir /srv/minecraft/configuration
    mkdir /srv/minecraft/servers
    mkdir /srv/minecraft/zip
    mkdir /srv/minecraft/backups
    mkdir /srv/minecraft/archives
    mkdir /srv/minecraft/scripts
    mkdir /srv/minecraft/logs
    cd /srv/minecraft
    cp /etc/hostname /srv/minecraft/configuration/hostname
    # Setups file system in order for the script to progress.
    
    # Server is the hostname of the server that is hosting the files for this server to download.
    # Hostname is the name of this server that is being configured with this script.
    echo "The value of \"hostname\" is $hostname."
    echo ''
    wget http://$server/$hostname/serverconfiguration.zip
    unzip latest.zip
    /bin/bash /srv/minecraft/scripts/configuration.sh
    
    esac
done

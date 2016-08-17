while true; do
    server=
    echo "Copyright 2016, Davis Enterprises LLC"
    echo "Davis Enterprises LLC Setup Script"
    echo "Reading hostname data."
    echp "Setup will begin shortly."
    hostname=`cat /etc/hostname`
    echo "The value of \"hostname\" is $hostname."
    wget http://$server/$hostname/latest.zip
    unzip latest.zip
    sh setup/config.sh
    
    esac
done

while true; do
    echo "Copyright 2016, Davis Enterprises LLC"
    echo "Davis Enterprises LLC Setup Script"
    echo "Reading hostname data."
    echp "Setup will begin shortly."
    hostname='cat ./configuration/hostnameofdthisserver.txt'
    server='cat ./configuration/nameofdownloadserver.txt'
    #Server is the hostname of the server that is hosting the files for this server to download.
    #Hostname is the name of this server that is being configured with this script.
    echo "The value of \"hostname\" is $hostname."
    wget http://$server/$hostname/serverconfiguration.zip
    unzip latest.zip
    sh setup/config.sh
    
    esac
done

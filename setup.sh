while true; do
    server=
    echo "Copyright 2016, Davis Enterprises LLC"
    echo "Davis Enterprises LLC Setup Script"
    echo "Reading data from configuration file"
    hostname=879
    echo "The value of \"hostname\" is $hostname."
    wget http://$server/$hostname/latest.zip
    unzip latest.zip
    sh config.sh
    
    esac
done

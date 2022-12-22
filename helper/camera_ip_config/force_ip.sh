#!/bin/bash
MAC1=1C0FAF2E667F # MAC address of camera1 
MAC2=1C0FAF2E8016 # MAC address of camera2
MAC3=1C0FAF2A7C10 # MAC address of camera3 

IP1=169.207.128.102 # IP address of camera1 
IP2=169.209.0.10    # IP address of camera2
IP3=169.219.0.68    # IP address of camera3

PATH=/path/to/IpConfigUtility

# Go to the location of the ./IpConfigUtility 
cd $PATH

# Check if IpConfigUtility exists
if [ -f "IpConfigUtility" ]; then
    echo "Found IpConfigUtility."
    
    # Force Camera 1
    ./IpConfigUtility /force -m $MAC1 -a $IP1 -s "255.255.0.0" -g "0.0.0.0"
    ./IpConfigUtility /persist -m $MAC1 -a $IP1 -s "255.255.0.0" -g "0.0.0.0"
    echo "Forced $IP1 to $MAC1."
    
    # Force Camera 2
    ./IpConfigUtility /force -m $MAC2 -a $IP2 -s "255.255.0.0" -g "0.0.0.0"
    ./IpConfigUtility /persist -m $MAC2 -a $IP2 -s "255.255.0.0" -g "0.0.0.0"
    echo "Forced $IP2 to $MAC2."
   
    # Force Camera 3
    ./IpConfigUtility /force -m $MAC3 -a $IP3 -s "255.255.0.0" -g "0.0.0.0"
    ./IpConfigUtility /persist -m $MAC3 -a $IP3 -s "255.255.0.0" -g "0.0.0.0"
    echo "Forced $IP3 to $MAC3."
else 
    echo "Please enter the correct IpConfigUtility path."
fi

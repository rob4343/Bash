#!/bin/bash
##################################################################################################################################
#                                           This script is written by Rohit Mahajan                                               #
#                     #
##################################################################################################################################
################################ Install Packages # funktion not called ################
package(){
#This funktion installs additional packages 
    sudo apt update.
    sudo apt install sssd-ad sssd-tools realmd adcli.
    sudo apt install sssd-dbus.
    sudo apt install samba-common-bin

}
##################################################################################
#Checking Hostname and reconfigure the Hostname.

function hostfn {  
    #variable for store hostnames
     CUR_HOSTNAME=$(cat /etc/hostname)
     read hostn
     NEW_HOSTNAME=$hostn.ad.desynova.com

     # Display the current hostname
     echo "The current hostname is $CUR_HOSTNAME"

     # Change the hostname
     #hostnamectl set-hostname $NEW_HOSTNAME
     #hostname $NEW_HOSTNAME

     # Change hostname in /etc/hosts & /etc/hostname
     sudo sed -i "s/$CUR_HOSTNAME/$NEW_HOSTNAME/g" /etc/hosts
     sudo sed -i "s/$CUR_HOSTNAME/$NEW_HOSTNAME/g" /etc/hostname

     # Display new hostname
     echo "The new hostname is $NEW_HOSTNAME"
}  









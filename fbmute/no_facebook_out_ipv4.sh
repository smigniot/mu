#!/bin/sh
iptables -N no_facebook_out
iptables -A no_facebook_out -d 204.15.20.0/22 -j REJECT
iptables -A no_facebook_out -d 69.63.176.0/20 -j REJECT
iptables -A no_facebook_out -d 66.220.144.0/20 -j REJECT
iptables -A no_facebook_out -d 66.220.144.0/21 -j REJECT
iptables -A no_facebook_out -d 69.63.184.0/21 -j REJECT
iptables -A no_facebook_out -d 69.63.176.0/21 -j REJECT
iptables -A no_facebook_out -d 74.119.76.0/22 -j REJECT
iptables -A no_facebook_out -d 69.171.255.0/24 -j REJECT
iptables -A no_facebook_out -d 173.252.64.0/18 -j REJECT
iptables -A no_facebook_out -d 69.171.224.0/19 -j REJECT
iptables -A no_facebook_out -d 69.171.224.0/20 -j REJECT
iptables -A no_facebook_out -d 103.4.96.0/22 -j REJECT
iptables -A no_facebook_out -d 69.63.176.0/24 -j REJECT
iptables -A no_facebook_out -d 173.252.64.0/19 -j REJECT
iptables -A no_facebook_out -d 173.252.70.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.64.0/18 -j REJECT
iptables -A no_facebook_out -d 31.13.24.0/21 -j REJECT
iptables -A no_facebook_out -d 66.220.152.0/21 -j REJECT
iptables -A no_facebook_out -d 66.220.159.0/24 -j REJECT
iptables -A no_facebook_out -d 69.171.239.0/24 -j REJECT
iptables -A no_facebook_out -d 69.171.240.0/20 -j REJECT
iptables -A no_facebook_out -d 31.13.64.0/19 -j REJECT
iptables -A no_facebook_out -d 31.13.64.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.65.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.67.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.68.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.69.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.70.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.71.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.72.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.73.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.74.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.75.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.76.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.77.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.96.0/19 -j REJECT
iptables -A no_facebook_out -d 31.13.66.0/24 -j REJECT
iptables -A no_facebook_out -d 173.252.96.0/19 -j REJECT
iptables -A no_facebook_out -d 69.63.178.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.78.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.79.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.80.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.82.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.83.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.84.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.85.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.86.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.87.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.88.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.89.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.90.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.91.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.92.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.93.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.94.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.95.0/24 -j REJECT
iptables -A no_facebook_out -d 69.171.253.0/24 -j REJECT
iptables -A no_facebook_out -d 69.63.186.0/24 -j REJECT
iptables -A no_facebook_out -d 31.13.81.0/24 -j REJECT
iptables -A no_facebook_out -d 179.60.192.0/22 -j REJECT
iptables -A no_facebook_out -d 179.60.192.0/24 -j REJECT
iptables -A no_facebook_out -d 179.60.193.0/24 -j REJECT
iptables -A no_facebook_out -d 179.60.194.0/24 -j REJECT
iptables -A no_facebook_out -d 179.60.195.0/24 -j REJECT
iptables -A no_facebook_out -d 185.60.216.0/22 -j REJECT
iptables -A no_facebook_out -d 45.64.40.0/22 -j REJECT
iptables -A no_facebook_out -d 185.60.216.0/24 -j REJECT
iptables -A no_facebook_out -d 185.60.217.0/24 -j REJECT
iptables -A no_facebook_out -d 185.60.218.0/24 -j REJECT
iptables -A no_facebook_out -d 185.60.219.0/24 -j REJECT
iptables -A no_facebook_out -d 129.134.0.0/16 -j REJECT
iptables -A no_facebook_out -d 157.240.0.0/16 -j REJECT
iptables -A no_facebook_out -d 157.240.8.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.0.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.1.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.2.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.3.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.4.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.5.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.6.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.7.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.9.0/24 -j REJECT
iptables -A no_facebook_out -d 157.240.10.0/24 -j REJECT
iptables -A no_facebook_out -d 204.15.20.0/22 -j REJECT
iptables -A no_facebook_out -d 69.63.176.0/20 -j REJECT
iptables -A no_facebook_out -d 69.63.176.0/21 -j REJECT
iptables -A no_facebook_out -d 69.63.184.0/21 -j REJECT
iptables -A no_facebook_out -d 66.220.144.0/20 -j REJECT
iptables -A no_facebook_out -d 69.63.176.0/20 -j REJECT
iptables -A no_facebook_out -j RETURN

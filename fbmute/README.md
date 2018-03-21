Process of enumerating and rejecting facebook IPs :
* Query the RAD http://radb.net/query/ search: AS32934
* Enumerate ip ranges `http://radb.net/query/?advanced_query=1` AS32934 inverse query by origin
* Grep the route and route6 CIDR ranges and build a netfilter script with REJECT

Gives those scripts for iptables (updated once in a while) :
* [IPV4 reject facebook IN|no_facebook_in_ipv4.sh]
* [IPV6 reject facebook IN|no_facebook_in_ipv6.sh]
* [IPV4 reject facebook OUT|no_facebook_out_ipv4.sh]
* [IPV6 reject facebook OUT|no_facebook_out_ipv6.sh]

By design, instagram and connect-with-facebook get muted too.



Process of enumerating and rejecting facebook IPs :
* Query the RAD http://radb.net/query/ , search for AS32934
* Enumerate ip ranges by http://radb.net/query/?advanced_query=1 
* Check inverse query by origin, use AS32934
* Grep the response route and route6 CIDR ranges 
* Build a netfilter script with REJECT

Gives those scripts for iptables (updated once in a while) :
* https://cdn.rawgit.com/smigniot/mu/ea0f32867907b855063c56ae8dbd7237d35913f1/fbmute/no_facebook_in_ipv4.sh
* https://cdn.rawgit.com/smigniot/mu/ea0f32867907b855063c56ae8dbd7237d35913f1/fbmute/no_facebook_in_ipv6.sh
* https://cdn.rawgit.com/smigniot/mu/ea0f32867907b855063c56ae8dbd7237d35913f1/fbmute/no_facebook_out_ipv4.sh
* https://cdn.rawgit.com/smigniot/mu/ea0f32867907b855063c56ae8dbd7237d35913f1/fbmute/no_facebook_out_ipv6.sh

To enable :
* iptables -I OUTPUT -j no_facebook_out
* iptables -I INPUT -j no_facebook_in
* ip6tables -I OUTPUT -j no_facebook_out
* ip6tables -I INPUT -j no_facebook_in

By design, instagram and connect-with-facebook get muted too.



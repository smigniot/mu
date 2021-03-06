#!/bin/sh
ip6tables -N no_facebook_in
ip6tables -A no_facebook_in -s 2620:0:1c00::/40 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880::/32 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:fffe::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:ffff::/48 -j REJECT
ip6tables -A no_facebook_in -s 2620:0:1cff::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f000::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f001::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f002::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f003::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f004::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f005::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f006::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f007::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f008::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f009::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f00a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f00b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f00c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f00d::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f00e::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f00f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f010::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f011::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f012::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f013::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f014::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f015::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f016::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f017::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f018::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f019::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f01a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f01b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f01c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f01d::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f01e::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f01f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:1000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:2000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:3000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:4000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:5000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:6000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:7000::/36 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f020::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f021::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f022::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f023::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f024::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f025::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f026::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f027::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f028::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f029::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f02b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f02c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f02d::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f02e::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f02f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f030::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f031::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f032::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f033::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f034::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f035::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f036::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f037::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f038::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f039::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f03a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f03b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f03c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f03d::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f03e::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f03f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2401:db00::/32 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880::/36 -j REJECT
ip6tables -A no_facebook_in -s 2803:6080::/32 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f100::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f200::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f101::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f201::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f102::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f202::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f103::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f203::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f104::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f204::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f107::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f207::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f108::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f208::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f109::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f209::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f10a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f20a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f10b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f20b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f10d::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f20d::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f10e::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f20e::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f10f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f20f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f110::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f210::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f111::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f211::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f112::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f212::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f114::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f214::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f115::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f215::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f116::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f216::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f117::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f217::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f118::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f218::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f119::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f219::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f11a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f21a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f11f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f21f::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f121::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f221::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f122::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f222::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f123::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f223::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f10c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f20c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f126::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f226::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f105::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f205::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f125::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f225::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f106::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f206::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f11b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f21b::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f113::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f213::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f11c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f21c::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f128::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f228::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f02a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f12a::/48 -j REJECT
ip6tables -A no_facebook_in -s 2a03:2880:f22a::/48 -j REJECT
ip6tables -A no_facebook_in -j RETURN

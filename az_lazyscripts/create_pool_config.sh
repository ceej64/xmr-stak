#!/usr/bin/env bash
 
 #Variables
 #pool_address1, pool_address2 
 #wallet1, wallet2
 #pool_pass1, #pool_pass2
 #nicehash1, nicehash2  -> true, false
 #tls1, tls2 -> true, false
 #tls_id1, tls_id2
 #pool_weight1, pool_weight2: 1..100
 #currency
 

[ -z "$wallet1" ] &&  exit 100
[ -z "$pool_address1" ] &&  exit 101
[ -z "$pool_pass1" ] &&  pool_pass1=x
[ -z "$nicehash1" ] &&  nicehash1=false
[ -z "$tls1" ] &&  tls1=false
[ -z "$pool_weight1" ] &&  pool_weight1=100
[ -z "$currency" ] &&  currency=monero

 echo '
"pool_list" :
[
'
echo "{\"pool_address\" : \"$pool_address1\", \"wallet_address\" : \"$wallet1\", \"pool_password\" : \"$pool_pass1\", \"use_nicehash\" : $nicehash1, \"use_tls\" : $tls1, \"tls_fingerprint\" : \"$tls_id1\", \"pool_weight\" : $pool_weight1 ,\"rig_id\" : \"\" },"



echo "	
],
\"currency\" : \"$currency\",
"

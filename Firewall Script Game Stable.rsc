/ip firewall filter
add action=fasttrack-connection chain=forward comment=BYPASS-SERVER \
    dst-address-list=SERVER in-interface=BRIDGE-PUBLIC
add action=fasttrack-connection chain=forward comment=BYPASS-SERVER \
    dst-address-list=IT in-interface=BRIDGE-PUBLIC
add action=passthrough chain=unused-hs-chain comment="place hotspot rules here" \
    disabled=yes
add action=drop chain=output disabled=yes dst-port=53 protocol=udp
add action=drop chain=forward comment=DROP-WA disabled=yes dst-address-list=\
    massaging src-address=10.62.1.0/24
add action=drop chain=forward comment=streeming-youtube layer7-protocol=\
    "youtube app" src-address=10.62.1.0/24
add action=drop chain=forward comment=streeming-youtube layer7-protocol=\
    "youtube app" src-address=192.168.11.0/24
add action=add-dst-to-address-list address-list=youtube_block \
    address-list-timeout=20s chain=forward comment=FORWARD-YOUTUBE-BLOCK \
    layer7-protocol="youtube app"
add action=drop chain=forward comment=DROP-E-COMMERCE disabled=yes \
    dst-address-list=E-COMMERCE src-address=10.62.1.0/24
add action=drop chain=forward comment=DROP-STREAMING dst-address-list=STREAMING \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=SOSMED layer7-protocol="SOCIAL MEDIA" \
    src-address=10.62.1.0/24
add action=add-dst-to-address-list address-list=socialmedia_block \
    address-list-timeout=1m chain=forward comment="yang akses social media" \
    disabled=yes layer7-protocol="SOCIAL MEDIA"
add action=drop chain=forward comment=xda-developers layer7-protocol=\
    xda-developer src-address=10.62.1.0/24
add action=drop chain=forward comment=sosmed-facebook layer7-protocol=facebook \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=Detik disabled=yes layer7-protocol=detik \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=Tokped disabled=yes layer7-protocol=\
    tokopedia src-address=10.62.1.0/24
add action=drop chain=forward comment=Lazada layer7-protocol=lazada \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=Vidio layer7-protocol=Vidio src-address=\
    10.62.1.0/24
add action=drop chain=forward comment=Twitter layer7-protocol=twitter \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=Kompas disabled=yes layer7-protocol=\
    kompas src-address=10.62.1.0/24
add action=drop chain=forward comment=Oriflame layer7-protocol=oriflame \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=Microsoft disabled=yes layer7-protocol=\
    microsoft src-address=10.62.1.0/24
add action=drop chain=forward comment=Torrent layer7-protocol=Torrent \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=Bukalapak layer7-protocol=bukalapak \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=aneh src-address=10.62.1.79
add action=drop chain=forward comment=Instragram layer7-protocol=instagram \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=get_peers_drop content=getpeers \
    src-address=10.62.1.0/24
add action=drop chain=forward comment=keyword_drop_torrent content=torrent \
    disabled=yes src-address=10.62.1.0/24
add action=drop chain=forward comment="wa block" dst-port=\
    5222,5223,5228,4244,5242 protocol=tcp src-address=10.62.1.0/24
add action=drop chain=forward comment="Block Conficker #1" disabled=yes log=yes \
    log-prefix=CONFIKER protocol=udp src-port=135-139,445
add action=drop chain=forward comment="Block Ransome 1" disabled=yes dst-port=\
    135-139,445 log=yes log-prefix="RNWH - 1" protocol=udp
add action=drop chain=forward comment="Block Ransome 2" disabled=yes log=yes 
    log-prefix="RNWH - 2" protocol=tcp src-port=135-139,593
add action=drop chain=forward comment="Block Ransome 3" disabled=yes dst-port
    135-139,445,593 log=yes log-prefix="RNWH - 3" protocol=tcp
add action=drop chain=input comment="InputRANSOME TCP" disabled=yes dst-port=
    135-139,445,593,3389 log-prefix=#####RANSOM protocol=tcp
add action=drop chain=input comment="Input RANSOME UDP " disabled=yes dst-por
    135-139,445,20004,7533,5678 log-prefix=#####RANSOM protocol=udp
add action=drop chain=forward comment="drop Ransome UDP" disabled=yes dst-por
    135-139,445,593,3389 log-prefix=#####RANSOM protocol=udp
add action=drop chain=forward comment="drop RANSOME TCP" disabled=yes dst-por
    135-139,445,593,3389 log-prefix=#####RANSOM protocol=tcp

/ip firewall filter
add action=drop chain=input comment="drop SSH&TELNET Brute Forcers" dst-port=
    22-23 protocol=tcp src-address-list=IP_BlackList
add action=add-src-to-address-list address-list=IP_BlackList \
    address-list-timeout=1d chain=input connection-state=new dst-port=22-23 \
    protocol=tcp src-address-list=SSH_BlackList_3
add action=add-src-to-address-list address-list=SSH_BlackList_3 \
    address-list-timeout=1m chain=input connection-state=new dst-port=22-23 \
    protocol=tcp src-address-list=SSH_BlackList_2
add action=add-src-to-address-list address-list=SSH_BlackList_2 \
    address-list-timeout=1m chain=input connection-state=new dst-port=22-23 \
    protocol=tcp src-address-list=SSH_BlackList_1
add action=add-src-to-address-list address-list=SSH_BlackList_1 \
    address-list-timeout=1m chain=input connection-state=new dst-port=22-23 \
    protocol=tcp
add action=reject chain=forward disabled=yes dst-port=137,138,445,3389 \
    protocol=tcp reject-with=icmp-network-unreachable
add action=reject chain=input disabled=yes dst-port=139,445,3389 protocol=tcp
    reject-with=icmp-network-unreachable
add action=reject chain=input disabled=yes dst-port=\
    139,445,3389,20004,7533,5678 protocol=udp reject-with=\
    icmp-network-unreachable
add action=reject chain=forward disabled=yes dst-port=137,138,445,3389 \
    protocol=tcp reject-with=icmp-network-unreachable


======================

/ip firewall filter
add action=accept chain=forward comment=Blok dst-port=53 out-interface=ether1 \
    protocol=udp
add action=drop chain=forward dst-port=53 out-interface=ether3 protocol=udp

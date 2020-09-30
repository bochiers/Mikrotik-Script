/ip firewall mangle
add chain=game
action=mark-connection new-connection-mark=Game passthrough=yes protocol=tcp
dst-address=203.89.146.0/23 dst-port=39190 comment="Point Blank" ip firewall mangle add chain=game
action=mark-connection new-connection-mark=Game passthrough=yes protocol=udp
dst-address=203.89.146.0/23 dst-port=40000-40010
dd action=mark-connection chain=game comment="Ayo Dance" disabled=no \
dst-address-list=nice dst-port=18900-18910 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Seal Online" disabled=no \
dst-address-list=nice dst-port=1818 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="Lineage 2" disabled=no \
dst-address-list=nice dst-port=7777 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment=IDS disabled=no \
dst-address-list=nice dst-port=2001 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="Ghost Online" disabled=no \
dst-address-list=nice dst-port=19101 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment=RF-Elven disabled=no \
dst-address-list=nice dst-port=27780 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Perfect  World" disabled=no \
dst-address-list=nice dst-port=29000 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment=Rohan disabled=no \
dst-address-list=nice dst-port=22100 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Zeus RO" disabled=no \
dst-address-list=nice dst-port=5121 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment=DOTA disabled=no \
dst-address-list=nice dst-port=6000-6125 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Crazy Kart" disabled=no \
dst-address-list=nice dst-port=9600-9602 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="WOW AMPM" disabled=no \
dst-address-list=nice dst-port=8085 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="Drift City" disabled=no \
dst-address-list=nice dst-port=11011-11041 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment=GetAmped disabled=no \
dst-address-list=nice dst-port=13413 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment=Yullgang disabled=no \
dst-address-list=nice dst-port=19000 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="RAN Online" disabled=no \
dst-address-list=nice dst-port=5105 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="Cross Fire TCP" disabled=no \
dst-address-list=nice dst-port=10009,13008,16666,28012 \
new-connection-mark=Game passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Cross Fire UDP" disabled=no \
dst-address-list=nice dst-port=12020-12080,13000-13080 \
new-connection-mark=Game passthrough=yes protocol=udp
add action=mark-connection chain=game comment="War Rock" disabled=no \
dst-address-list=nice dst-port=5340-5352 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Fast Black" disabled=no \
dst-address-list=nice dst-port=6000-6001 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Rose Online" disabled=no \
dst-address-list=nice dst-port=29200 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Crazy Kart 2" disabled=no \
dst-address-list=nice dst-port=9600 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="Return of Warrior" disabled=no \
dst-address-list=nice dst-port=10402 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Luna Online" disabled=no \
dst-address-list=nice dst-port=15000-15002 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Runes of Magic" disabled=no \
dst-address-list=nice dst-port=16400-16502 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Fresh Ragnarok PS" disabled=no \
dst-address-list=nice dst-port=5171 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="Tantra Online" disabled=no \
dst-address-list=nice dst-port=3010 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment=Atlantica disabled=no \
dst-address-list=nice dst-port=4300 new-connection-mark=Game passthrough=\
yes protocol=tcp
add action=mark-connection chain=game comment="ECO Online" disabled=no \
dst-address-list=nice dst-port=12011,12110 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Cabal Indonesia" disabled=no \
dst-address-list=nice dst-port=15000-15002 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Lost Saga" disabled=no \
dst-address-list=nice dst-port=14020-14053 new-connection-mark=Game \
passthrough=yes protocol=udp
add action=mark-connection chain=game comment="X-Shot UDP" disabled=no \
dst-address-list=nice dst-port=7777-7977,30000 new-connection-mark=Game \
passthrough=yes protocol=udp
add action=mark-connection chain=game comment="3 Kingdoms" disabled=no \
dst-address-list=nice dst-port=15000-15002 new-connection-mark=Game \
passthrough=yes protocol=udp
add action=mark-connection chain=game comment="Grand Chase TCP" disabled=no \
dst-address-list=nice dst-port=9300,9400,9700 new-connection-mark=Game \
passthrough=yes protocol=tcp
add action=mark-connection chain=game comment="Grand Chase UDP" disabled=no \
dst-address-list=nice dst-port=9401,9600 new-connection-mark=Game \
passthrough=yes protocol=udp
add action=mark-connection chain=game comment=MAKO disabled=no \
dst-address-list=nice dst-port=21000-21020 new-connection-mark=Game \
passthrough=yes protocol=tcp

/ip firewall mangle add chain=game
action=mark-packet new-packet-mark=Game_pkt passthrough=no connection-mark=Game
 
/ip firewall mangle add chain=prerouting
action=jump jump-target=game[shell]
 
<strong>Quee Type
</strong>
 
[shell]/queue type add name="Game" kind=pcq
pcq-rate=0 pcq-limit=50 pcq-classifier=src-address,dst-address,src-port,dst-port
pcq-total-limit=2000


##Quee Tree

/queue tree add name="Game"
parent=global-total packet-mark=Game_pkt limit-at=0 queue=Game priority=1
max-limit=0 burst-limit=0 burst-threshold=0 burst-tigitme=0s

##Rule Mangel Untuk Zynga Poker:

/ip firewall mangle add chain=prerouting
protocol=tcp dst-port=9339 connection-state=new action=mark-connection
new-connection-mark=poker passthrough=yes comment="poker" disabled=no
 
/ip firewall mangle add chain=prerouting
connection-mark=poker action=mark-packet new-packet-mark=poker1 passthrough=no
comment="" disabled=no

## Quee Tree Poker
/queue tree
add name="poker mania"
parent=global-out packet-mark=poker1 limit-at=0 queue=default priority=1
max-limit=0 burst-limit=0 burst-threshold=0 burst-time=0s disabled=no

## Rule Mangle Untuk Browsing

/ip firewall mangle add chain=forward
action=mark-connection new-connection-mark=http passthrough=yes protocol=tcp
in-interface=speda out-interface=lokal packet-mark=!Game_pkt
connection-mark=!Game connection-bytes=0-262146 comment="BROWSE"
 
/ip firewall mangle add chain=forward
action=mark-packet new-packet-mark=http_pkt passthrough=no protocol=tcp
connection-mark=http
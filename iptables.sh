#!/bin/bash
apt update -y && apt install xtables-addons-common -y && \
ip6tables -A FORWARD -m ipp2p --edk --kazaa --gnu --bit --apple --dc --soul --winmx --ares -j DROP 
ip6tables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP 
ip6tables -A INPUT -m string --string "BitTorrent" --algo bm -j DROP
ip6tables -A INPUT -m string --string "BitTorrent protocol" --algo bm -j DROP
ip6tables -A INPUT -m string --string "peer_id=" --algo bm -j DROP
ip6tables -A INPUT -m string --string ".torrent" --algo bm -j DROP
ip6tables -A INPUT -m string --string "announce.php?passkey=" --algo bm -j DROP
ip6tables -A INPUT -m string --string "torrent" --algo bm -j DROP
ip6tables -A INPUT -m string --string "announce" --algo bm -j DROP
ip6tables -A INPUT -m string --string "info_hash" --algo bm -j DROP
ip6tables -A INPUT -m string --string "tracker" --algo bm -j DROP
ip6tables -A INPUT -m string --string "get_peers" --algo bm -j DROP
ip6tables -A INPUT -m string --string "announce_peer" --algo bm -j DROP
ip6tables -A INPUT -m string --string "find_node" --algo bm -j DROP
ip6tables -A FORWARD -m string --string "BitTorrent" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "BitTorrent protocol" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "peer_id=" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string ".torrent" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "announce.php?passkey=" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "torrent" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "announce" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "info_hash" --algo bm --to 65535 -j DROP
ip6tables -A FORWARD -m string --string "tracker" --algo bm -j DROP
ip6tables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
ip6tables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
ip6tables -A FORWARD -m string --string "find_node" --algo bm -j DROP
iptables -A INPUT -m string --string "BitTorrent" --algo bm -j DROP
iptables -A FORWARD -m ipp2p --edk --kazaa --gnu --bit --apple --dc --soul --winmx --ares -j DROP
iptables -A INPUT -m string --string "BitTorrent protocol" --algo bm -j DROP
iptables -A INPUT -m string --string "peer_id=" --algo bm -j DROP
iptables -A INPUT -m string --string ".torrent" --algo bm -j DROP
iptables -A INPUT -m string --string "announce.php?passkey=" --algo bm -j DROP
iptables -A INPUT -m string --string "torrent" --algo bm -j DROP
iptables -A INPUT -m string --string "announce" --algo bm -j DROP
iptables -A INPUT -m string --string "info_hash" --algo bm -j DROP
iptables -A INPUT -m string --string "tracker" --algo bm -j DROP
iptables -A INPUT -m string --string "get_peers" --algo bm -j DROP
iptables -A INPUT -m string --string "announce_peer" --algo bm -j DROP
iptables -A INPUT -m string --string "find_node" --algo bm -j DROP
iptables -A FORWARD -m string --string "BitTorrent" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "BitTorrent protocol" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "peer_id=" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string ".torrent" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "announce.php?passkey=" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "torrent" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "announce" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "info_hash" --algo bm --to 65535 -j DROP
iptables -A FORWARD -m string --string "tracker" --algo bm -j DROP
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP
apt install iptables-persistent -y
netfilter-persistent save
netfilter-persistent start

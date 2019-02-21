Grep Command In Unix With Example
Grep searches input files for lines containing a match to a given pattern list.

Match all words starting with Ind
cat /usr/share/dict/words | grep "Ind.*"
Output

Ind
Indanthrene
Indecidua
Independista
India
Match all words ending with age
cat /usr/share/dict/words | grep ".*age$" 
Output

wreathage
wreckage
xylophage
yardage
yokeage
Match all pattern which starts with q and doesn’t follow by u
cat /usr/share/dict/words | grep "q."  | grep -v "qu" 
Output

Iraqi
Iraqian
Louiqa
miqra
qasida
qere

Get information about all ethernet interfaces using -A (after) flag
ifconfig | grep "en[0-9]" -A 4
Output

en0: flags=xxxx<UP,BROADCAST,SMART,RUNNING,SIMPLEX,MULTICAST> mtu xxxx
	ether xx:bf:xb:ex:xd:xx
	inetx fexx::xcfx:cxbx:xxbx:bx%enx prefixlen xx secured scopeid xxx
	inet xxx.xx.x.xxx netmask xxffffffxx broadcast xxx.xx.x.xxx
	ndx options=xxx<PERFORMNUD,DAD>
en1: flags=xxx<UP,BROADCAST,SMART,RUNNING,PROMISC,SIMPLEX> mtu xxxx
	options=xx<TSOx,TSOx>
	ether xa:xx:xd:xx:xc:bx
	media: autoselect <full-duplex>
	status: inactive

Recursively search for a keyword and also get filename using -H (filename), -R (recursive), -i (case-insensitive) flag 
grep -HRi "json" *
Output

web/problems/bookmark.js:            dataType: 'json',
web/tag-search.js:                dataType: 'json',
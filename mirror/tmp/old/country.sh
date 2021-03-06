#!/bin/sh
cd /home/web/mirror/attrition/
echo "Statistics include all mirrors at www.attrition.org/mirror/attrition/"
echo "australia: `grep .au\/ 199*html | wc -l`"
echo "belgium: `grep .be\/ 199*html | wc -l`"
echo "brazil: `grep .br\/ 199*html | wc -l`"
echo "canada: `grep .ca\/ 199*html | wc -l`"
echo "chile: `grep .cl\/ 199*html | wc -l`"
echo "china: `grep .cn\/ 199*html | wc -l`"
echo "czech republic: `grep .cz\/ 199*html | wc -l`"
echo "christmas islands: `grep .cx\/ 199*html | wc -l`"
echo "estonia: `grep .ee\/ 199*html | wc -l`"
echo "germany: `grep .de\/ 199*html | wc -l`"
echo "denmark: `grep .dk\/ 199*html | wc -l`"
echo "spain: `grep .es\/ 199*html | wc -l`"
echo "greece: `grep .gr\/ 199*html | wc -l`"
echo "honk kong: `grep .hk\/ 199*html | wc -l`"
echo "ireland: `grep .ie\/ 199*html | wc -l`"
echo "israel: `grep .il\/ 199*html | wc -l`"
echo "italy: `grep .it\/ 199*html | wc -l`"
echo "japan: `grep .jp\/ 199*html | wc -l`"
echo "korea: `grep .kr\/ 199*html | wc -l`"
echo "mexico: `grep .mx\/ 199*html | wc -l`"
echo "malaysia: `grep .my\/ 199*html | wc -l`"
echo "norway: `grep .no\/ 199*html | wc -l`"
echo "philippines: `grep .ph\/ 199*html | wc -l`"
echo "pakistan: `grep .pk\/ 199*html | wc -l`"
echo "poland: `grep .pl\/ 199*html | wc -l`"
echo "romania: `grep .ro\/ 199*html | wc -l`"
echo "russia: `grep .ru\/ 199*html | wc -l`"
echo "sweden: `grep .se\/ 199*html | wc -l`"
echo "switzerland: `grep .ch\/ 199*html | wc -l`"
echo "thailand: `grep .th\/ 199*html | wc -l`"
echo "taiwan: `grep .tw\/ 199*html | wc -l`"
echo "united kingdom: `grep .uk\/ 199*html | wc -l`"
echo "vatican: `grep .va\/ 199*html | wc -l`"
echo "vietnam: `grep .vn\/ 199*html | wc -l`"
echo "yugoslavia: `grep .yu\/ 199*html | wc -l`"
echo "south africa: `grep .za\/ 199*html | wc -l`"

echo "com: `grep .com\/ 199*html | wc -l`"
echo "edu: `grep .edu\/ 199*html | wc -l`"
echo "net: `grep .net\/ 199*html | wc -l`"
echo "org: `grep .org\/ 199*html | wc -l`"
echo "mil: `grep .mil\/ 199*html | wc -l`"
echo "gov: `grep .gov\/ 199*html | wc -l`"
echo "int: `grep .int\/ 199*html | wc -l`"


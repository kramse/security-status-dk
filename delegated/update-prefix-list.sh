#! /bin/bash
# Get list of danish IPs from RIPE NCC delegated

echo "Getting list of IPs from RIPE NCC"

round()
{
  echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)+0.5)/(10^$2)" | bc))
}

echo "Getting RIPE NCC, and sorting it"
wget -q http://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest -O ripe_delegated.list

cat ripe_delegated.list|grep "ipv4" | egrep "assigned|allocated" | egrep "DK" | grep -e '^$' -v > ripe_danish_ipv4.list
cat ripe_delegated.list|grep "ipv6" | egrep "assigned|allocated" | egrep "DK" | grep -e '^$' -v > ripe_danish_ipv6.list

echo "Creating new lists with prefixes"
# IPv4
cat ripe_danish_ipv4.list|cut -d"|" -f4,5 | sed "s/|/\//" > ips.list
cat ips.list | cut -d "/" -f 2 | sort | uniq > mask.list

while read line; do
    BIT=`echo "l($line)/l(2)" | bc -l`
    BIT=$(round $BIT 0)
    BIT=$(expr 32 - $BIT)
    echo "perl -pi -e \"s/\/$line$/\/${BIT}x/g\" ips.list"  >> replace.sh
done < mask.list

echo "perl -pi -e \"s/x$//g\" ips.list"  >> replace.sh

source replace.sh
mv ips.list danish_prefixes_ipv4.list

# IPv6
cat ripe_danish_ipv6.list|cut -d"|" -f4,5 | sed "s/|/\//" > danish_prefixes_ipv6.list

# Cleanup
rm mask.list replace.sh > /dev/null 2>&1

#!/bin/zsh
# now=$(date '+%d-%b-%Y (%a)')
now=$(date '+%a %b %d %Y')
echo
echo "* ${now} Tommy Reynolds <Oldest.Software.Guy@gmail.com>"
exec /bin/awk -f "${0:r}.awk" "${@}"

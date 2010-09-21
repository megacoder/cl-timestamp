#!/bin/zsh
# now=$(date '+%d-%b-%Y (%a)')
now=$(date '+%a %b %d %Y')
echo
echo "* ${now} Tommy Reynolds <Tommy.Reynolds@MegaCoder.com>"
echo ${@:-FIXME} | awk '
BEGIN	{
	leader = "- "
	line = ""
	sep = ""
}
/./	{
	for( i = 1; i <= NF; ++i )	{
		token = $i
		if( (length(line)+length(token)+1) > 72 )	{
			printf( "%s%s\n", leader, line )
			leader = "  "
			line = ""
			sep = ""
		}
		line = sprintf( "%s%s%s", line, sep, token )
		sep = " "
	}
	next
}
END	{
	if( length(line) > 0 )	{
		printf( "%s%s\n", leader, line )
	}
}
'

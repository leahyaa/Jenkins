
#!/usr/bin/env bash

failed=0
if egrep "^(\+ |- )" task-plus-match.txt &&  ! ( egrep -v "^(\+ |- )" task-plus-match.txt )
then
	echo "match success"
else
	failed=1
	echo "match failed"
fi

if egrep "^(\+ |- )" task-plus-miss.txt
then
	failed=1
	echo "miss failed"
else
	echo "miss success"
fi

exit $failed

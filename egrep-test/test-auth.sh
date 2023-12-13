#!/usr/bin/env bash

failed=0

if egrep "New session [0-9]+ of user" task-auth-match.txt &&  ! ( egrep -v "New session [0-9]+ of user" task-auth-match.txt )
then
	echo "match success"
else
	failed=1
	echo "match failed"
fi

if egrep "New session [0-9]+ of user" task-auth-miss.txt
then
	failed=1
	echo "miss failed"
else
	echo "miss success"
fi

exit $failed

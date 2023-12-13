#!/usr/bin/env bash

failed=0

#commit 831068e3d3027552419dc0c1c409524c75f51c98 (tag: start-here)
if egrep "^commit .*\W(tag|ref):" task-git-match.txt &&  ! ( egrep -v "^commit .*\W(tag|ref):" task-git-match.txt )
then
	echo "match success"
else
	failed=1
	echo "match failed"
fi

if egrep "^commit .*\W(tag|ref):" task-git-miss.txt
then
	failed=1
	echo "miss failed"
else

	echo "miss success"
fi

exit $failed

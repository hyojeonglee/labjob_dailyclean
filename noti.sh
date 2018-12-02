#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: $0 <mail address>"
	exit 1
fi

BINDIR=`dirname $0`
cd $BINDIR

TARGET=$1

./sendgmail -subject "청소 당번 알림" -to "$TARGET" \
	-bcc "sj38.park@gmail.com"

#!/bin/bash

echo "This is continue block"
for i in {1..5}
do
        if ((i==3))
        then
                continue
        fi
        echo $i
done


echo "This is break block"
for i in {1..5}
do
        if ((i==2))
        then
                break
        fi
        echo $i
done

#sleep command and using it to sleep for 2 seconds
echo "This is exit block"
for i in {1..5}
do
	if ((i==4))
	then
		exit
	fi
	echo $i
	sleep 1
done

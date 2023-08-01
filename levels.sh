# For appending to keras.dot
for i in $(cat kerasapi.txt); do
	SLSH=$(sed 's/[^/]//g;s///' <<< $i | wc -m)
	EDG=$(sed 's/.*\/\([^/]\+\)\/\([^/]\+\)\/$/\1 -> \2/' <<< $i)
	echo "$EDG [weight=$(( 8 - SLSH ))];"
done

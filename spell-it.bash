voice=Tessa

for word in `cat vocabulary.txt` 
do
	clear 
	delay=0

	say -v $voice "Spell $word"

	read answer
	while [ "$answer" != "$word" ]
	do
		say -v $voice "$answer"
		say -v $voice "is not correct"

		if [ $delay -gt 1 ]
		then
			say -v $voice "dunder head"
		fi

		say -v $voice "Spell $word"

		echo "$word"
		delay=`echo $delay + 1 | bc`
		sleep `echo $delay / 2 | bc`
		clear

		read answer
	done

	say -v $voice "Good!"
done

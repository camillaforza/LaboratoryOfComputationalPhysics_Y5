
#1a
mkdir students
cd students
fname="LCP_22-23_students.csv"
if [ ! -f $fname ]
then
	echo "Downloading..."
	wget https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv
else
    	file=./$fname
fi

#1b
grep "PoD" LCP_22-23_students.csv > PoD_students.txt
grep "Physics" LCP_22-23_students.csv > Phys_students.txt

#1c

for i in {A..Z}
do
	cnt=$(grep -c "^$i" LCP_22-23_students.csv)
	echo "$i	$cnt"
done 

#1d -> To finish

letter=0
most=0
for i in {a..z}
do
	cnt=$(grep -c "$i" LCP_22-23_students.csv)
	if [ $cnt -gl $most ]
	then
		most=$cnt
		letter=$i
	fi
done	
echo "The letter with most counts is: $letter 	with $most counts"

		

#rm -rf scrape
#mkdir scrape2
LASTNUM=2670
counter=0
while [ $counter -le $LASTNUM ]
do

  #PAGE=$URL$counter
  #echo "wget page: "$PAGE
  #wget -nv -P $FOLDER -O $FOLDER/$counter.html --load-cookies=$COOKIE $PAGE
  curl -f -L -b apple.com_cookies.txt https://recruiting-content.apple.com/media/$counter/edit -o scrape2/$counter.html
  echo "/page/"$counter
  ((counter=counter+1))

done

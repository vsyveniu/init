find $1 -type f -print0 | xargs -0 du -h | sort -h 
#add -r flag to sort for sorting in descending order
#find . -type f -print0 | xargs -0 du -h | sort -rh
#add iname to sort hidden files
#find . -type f iname".*" -print0 | xargs -0 du -h | sort -rh


#another way. More detailed and ugly
#ls -lS  $1 | grep '^-' | sort -k 5 -rn



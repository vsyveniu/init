find $1 -type f -print0 | xargs -0 du -h | sort -h 
#add -r flag to sort for sorting in descending order
#find . -type f -print0 | xargs -0 du -h | sort -rh
#add iname to sort hidden files
#find . -type f iname".*" -print0 | xargs -0 du -h | sort -rh


#another way. More detailed and ugly
#ls -lS  $1 | grep '^-' | sort -k 5 -rn


$>sh script/3 /var
248736	/var
131080	/var/cache
125012	/var/cache/apt
113992	/var/lib
97572	/var/lib/apt
97544	/var/lib/apt/lists
75024	/var/cache/apt/archives
33016	/var/cache/apt/archives/linux-image-3.16.0-4-amd64_3.16.7-ckt20-1+deb8u4_amd64.deb
33012	/var/lib/apt/lists/httpredir.debian.org_debian_dists_jessie_main_binary-amd64_Packages
31764	/var/lib/apt/lists/httpredir.debian.org_debian_dists_jessie_main_source_Sources
$>
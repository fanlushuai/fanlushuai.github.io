#!/usr/bin/bash
#===================
# clean imgs not used in *.md
#===================

IMGS_DIR='.'
MD_DIR='../docs'
BACK_DIR=${1:-'noRef/'}
echo $BACK_DIR
for fileName in $( ls -p | grep -v / )
do 
   echo "$fileName"
   if [ ${0##*/} = $fileName ] ; then
   	continue
   fi
   if [ 0 -eq $(find $MD_DIR -name "*\.md" -type f | xargs cat | grep -c $fileName) ] ;then
        echo "mv $IMGS_DIR/$fileName $BACK_DI"
	mv $fileName $BACK_DIR
   fi
   
done

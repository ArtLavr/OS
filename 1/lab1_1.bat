mkdir qwerty
cd qwerty
echo sadfsdfadgsdg > "text.txt"
echo afdsfasdsadf > "text1.txt"
pause

attrib +R +H "text.txt"
fc "text.txt" "text1.txt" 
pause


attrib -H "text.txt"
copy "text.txt" "text2.txt"
pause

mkdir "pLab_1"
pause

cd "pLab_1"
copy "..\*.txt"
ren "*.txt" "*.doc"
cd ..
pause

tree /A /F >> "text2.txt"
date /T >> "text2.txt"
time /T >> "text2.txt"
echo Lavrentikov Artyom >> "text2.txt"
pause

move "pLab_1\*.*"
rmdir "pLab_1"
cd ..
rmdir /S /Q qwerty
pause

exit
cd /home
ls
ls -l
ls -f
ls -F
ls -l -t
ls -l -X
ls -a -l
ls -l -S
read

mkdir 'Lavrentikov/lab_2'
touch 'text1.txt'
nano 'text1.txt'
mv text1.txt 'Lavrentikov/lab_2'
Lavrentikov/lab_2
read

touch text2.txt
echo "kdsaglkag" > "text2.txt"
cat "text1.txt" "text2.txt" > "text3.txt"
less "text3.txt"
touch "text4.txt" "text5.txt" "text6.txt" "text7.txt" "text8.txt" "text9.txt" "text10.txt" "text11.txt" "text12.txt" "text13.txt" "text14.txt" "text15.txt"
read

mkdir "plab_2"
touch "plab_2/text4.txt"
mv "plab_2/text4.txt" "plab_2/text9.txt"
cp "text1.txt" "plab_2"
cp "text2.txt" "plab_2"
cp "text3.txt" "plab_2"
cp "text4.txt" "plab_2"
cp "text5.txt" "plab_2"
cp "text6.txt" "plab_2"
cp "text7.txt" "plab_2"
cp "text8.txt" "plab_2"
read

cd plab_2
mv "text1.txt" "text16.doc"
mv "text2.txt" "text17.doc"
mv "text3.txt" "text18.doc"
mv "text4.txt" "text19.abc"
mv "text5.txt" "text20.abc"
mv "text6.txt" "text21.abc"
mv "text7.txt" "text22.zed"
mv "text8.txt" "text23.zed"
mv "text9.txt" "text24.zed"
mv *.doc ".." 
mv *.abc ".."
mv *.zed ".."  
cd ..
read


date >> "text1.txt"
echo "Lavrentikov A.V." >> "text1.txt"
read

zip -9 -e texts.zip *
rm *.txt
rm *.doc
rm *.abc
rm *.zed
unzip texts.zip
read

rmdir plab_2
read

cd .. && rm -r lab_2
rm -rf target
mkdir target
cp test.fodt_ target
./lo-kts-converter.main.kts -i target/test.fodt_ -f pdf,docx -c soffice -t
./lo-kts-converter.main.kts -i target/test.fodt_ -f pdf -c soffice -t -o test1

cp $(kscript -p lo-kts-converter.main.kts 2> >(grep -oP -i '(?<=\[kscript\] )\/.*')).jar \
  ./lo-kts-converter.main.jar
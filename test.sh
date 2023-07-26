rm -rf target
mkdir target
cp test.fodt_ target
./lo-kts-converter.main.kts -i target/test.fodt_ -f pdf,docx

clear

rojo=$(echo 'printf' '\033[31m')

blanco=$(echo 'printf' '\033[0m')

$rojo
cat << "INFO"

     _.--"""""--._
   .'             '.
  /                 \
 ;                   ;
 |                   |
 |                   |
 ;                   ;
  \ (`'--,    ,--'`) /
   \ \  _ )  ( _  / /
    ) )(')/  \(')( (
   (_ `""` /\ `""` _)
    \`"-, /  \ ,-"`/
     `\ / `""` \ /`
      |/\/\/\/\/\|
      |\        /|
      ; |/\/\/\| ;
       \`-`--`-`/
        \      /
         ',__,'

INFO
$rojo

echo "             Made By zSkiddoh"
echo

$blanco

if [ -z "$1" ]; then

        echo "Usa: sh $0 [web]"
        exit 0
fi

echo
wget --limit-rate=100k --no-clobber --convert-links --random-wait -r -p -E -e robots=off -U mozilla $1

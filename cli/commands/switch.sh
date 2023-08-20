BASEDIR=$(dirname "$0")

echo "$1" > $BASEDIR/../../current.txt
exec zsh

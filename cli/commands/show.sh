BASEDIR=$(dirname "$0")

echo -- available workspaces:
find $BASEDIR/../../workspaces/* -type d -printf '%f\n'
WORKSPACE=$1
BASEDIR=$(dirname "$0")

# todo: resolve relative parts
WORKSPACE_PATH="$BASEDIR/../../workspaces/$WORKSPACE"

if [ ! $WORKSPACE ] || [ ! -d $WORKSPACE_PATH ] 
then
    echo "Workspace not found"
    exit 1
fi

echo "$WORKSPACE_PATH will be removed recursively."
printf "Are you sure (y/n)?"
echo
read response

if [ "$response" = "${response#[Yy]}" ] ;then 
    exit 1
fi

rm -rf $WORKSPACE_PATH

echo "Workspace removed successfully."
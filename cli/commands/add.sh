
WORKSPACE=$1
BASEDIR=$(dirname "$0")

# todo: resolve relative parts
WORKSPACE_PATH="$BASEDIR/../../workspaces/$WORKSPACE"

if [ -d $WORKSPACE_PATH ] ||  [ -e $WORKSPACE_PATH ]
then
    echo "Workspace already exists!"
    echo "Choose another name"
    exit 1
fi

mkdir "$WORKSPACE_PATH"
echo "" > $WORKSPACE_PATH/main.sh
chmod 700 "$WORKSPACE_PATH"

echo "echo workspace created"
echo "path: $WORKSPACE_PATH/main.sh"
echo
echo "Add anything you want to the main.sh"
echo "and than switch to the workspace:"
echo "~ wsswitch ${WORKSPACE}"

BASEDIR=$(dirname "$0")

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

WORKSPACE=`cat $BASEDIR/current.txt`
WORKSPACE_PATH=$BASEDIR/workspaces/$WORKSPACE/main.sh

source $BASEDIR/cli/main.sh

if [ ! $WORKSPACE ]
then
    echo info: workspace is not set
elif [[ -e $WORKSPACE_PATH ]]
then
    source $WORKSPACE_PATH
    echo ${green} $WORKSPACE workspace activated
    echo "path: ${WORKSPACE_PATH}"
else
    echo ${red} got an invalid workspace: $WORKSPACE 
    echo ${reset}
    show
fi

echo $reset
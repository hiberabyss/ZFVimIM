WORK_DIR=$(cd "$(dirname "$0")"; pwd)
REPO_PATH=$1
if test "1" = "0" \
    || test "x-$REPO_PATH" = "x-" \
    ; then
    exit 1
fi

_OLD_DIR=$(pwd)

cd "$REPO_PATH"
RESULT=`git rev-list --count HEAD`
echo $RESULT

cd "$_OLD_DIR"
exit 0


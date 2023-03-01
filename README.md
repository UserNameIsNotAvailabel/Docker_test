# Docker_test
Build Dockerfile with argument "newuser"

docker build --build-arg newuser=$YOURUSERNAME -t systeminfo .

Where $YOURUSERNAME is name of your user.

For run use:

docker run systeminfo

export GITEMA_PATH=`pwd`
chmod 0755 admin/*
chmod 0755 git_commands/*
ln -fs $GITEMA_PATH/git_commands/git-deploy /usr/local/bin/git-deploy

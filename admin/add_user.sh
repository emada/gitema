source $GITEMA_PATH/config

filename=$(basename "$1")
username=${filename%.*}

echo scp -P $port $1 $user@$server:$server_path/public_keys/$filename
echo ssh -p $port $user@$server ./$server_path/authorize_keys.sh

echo "
host homologa
    User git
    Port $port
    Hostname $server
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/$username" >> ~/.ssh/config
    
    
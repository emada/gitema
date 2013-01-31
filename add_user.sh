source $PWD/config

filename=$(basename "$1")
username=${filename%.*}

# scp -P $port $1 $user@$server:gitema/public_keys/$filename
# ssh -p $port $user@$server ./gitema/authorize_keys.sh

echo "
host homologa
    User git
    Port $port
    Hostname $server
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/$username" >> ~/.ssh/config
    
    
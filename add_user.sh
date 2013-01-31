source $PWD/config

filename=$(basename "$1")
scp -P $port $1 $user@$server:gitema/public_keys/$filename
ssh -p $port $user@$server ./gitema/authorize_keys.sh

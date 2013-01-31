rm -rf ~/.ssh/authorized_keys
touch ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys

for i in $PWD/gitema/public_keys ; do
    cat $i >> ~/.ssh/authorized_keys
done

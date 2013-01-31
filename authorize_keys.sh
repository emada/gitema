rm -rf ~/.ssh/authorized_keys
for i in $PWD/public_keys/* ; do
    cat $i >> ~/.ssh/authorized_keys
done
chmod 0600 ~/.ssh/authorized_keys

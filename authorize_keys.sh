rm -rf ~/.ssh/authorized_keys
cd $PWD/public_keys
for i in $PWD ; do
    cat $i >> ~/.ssh/authorized_keys
done
chmod 0600 ~/.ssh/authorized_keys

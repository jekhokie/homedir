```bash
# navigate to home directory and clone files
git clone https://github.com/jekhokie/homedir.git

# copy all files to home directory
rsync -r --exclude '.git' homedir/.* .

# change shell to bash given configs expect bash shell
chsh -s /bin/bash
# enter password
```

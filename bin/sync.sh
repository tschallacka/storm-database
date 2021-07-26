#!/usr/bin/env bash
echo "Removing src"
if [ ! -d storm ]; then
    echo "cloning base storm library, with laravel 6 support"
    git clone https://github.com/wintercms/storm
fi
echo "Pulling latest versions"
cd storm
git checkout 1.1
git pull
cd ..
echo "Creating target directories"
cd src
rm -rf Argon Database Events Extension Translation Validation Support
cd ..
echo "Copying files from storm"
rsync -av storm/src/Argon src/
rsync -av storm/src/Database src/
rsync -av storm/src/Events src/
rsync -av storm/src/Extension src/
rsync -av storm/src/Translation src/
rsync -av storm/src/Validation src/
rsync -av storm/src/Support/Traits src/Support
rsync -av storm/src/Support/Arr.php src/Support
rsync -av storm/src/Support/Collection.php src/Support
rsync -av storm/src/Support/Str.php src/Support

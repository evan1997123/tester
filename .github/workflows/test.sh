#!/bin/bash
if [[ `git branch -a 2>&1` = *evanlovescodio* ]]; then
    echo "OK"
else
    echo "Sad reacts"
    git branch evanlovescodio
fi

echo "before checkout"
git checkout evanlovescodio
echo "Goodbye, world!\n" >> ./a.txt
echo "after appending"
cat ./a.txt
git add .
git commit -m "Added goodbye world to a.txt in branch evanlovescodio"
# git push origin evanlovescodio

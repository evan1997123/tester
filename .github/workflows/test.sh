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

echo git branch
git add -A

git -c user.name="GitHub Actions" -c user.email="actions@github.com" commit -m "why hello there" --author="$CURRENT_USER <$CURRENT_USER@users.noreply.github.com>"

if [[ `git branch -r 2>&1` = *evanlovescodio* ]]; then
    echo "pull evanlovescodio"
    # git pull origin evanlovescodio --ff-only
    PUSH_OPT=""
else
    echo "no need to pull evanlovescodio"
    PUSH_OPT="-u"
fi

git push -f ${PUSH_OPT} origin evanlovescodio

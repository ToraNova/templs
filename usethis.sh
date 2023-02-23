#!/bin/sh

# safety measure to prevent accidental deletion
if grep -q 'anchor' .templs; then
    printf "Use this templ: $(git branch --show-current)? yes/(no):"
else
    echo "DO NOT RUN THIS OUTSIDE OF templs!";
    exit 1
fi

read yesno
if [ "${yesno}" = "yes" ]; then
    rm -rf ./.git
    rm -f ./usethis.sh
    rm -f ./README.md
else
    cat << EOL

Use the following to switch to the branch (template) you want, then run this script again.
git checkout -b <branch>

If you cloned only the master branch, you can use the following to fetch other branches
git fetch <branch>

If you are not sure which remote branches are available, use the following
git branch -r
EOL
fi

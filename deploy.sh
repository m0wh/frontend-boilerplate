#!/usr/bin/env sh

set -e
yarn build
cd dist

# if deploying to a custom domain
# echo 'domain.com' > CNAME

git init
git add -A
git commit -m 'Update' --allow-empty
git push -f git@github.com:user/repo master:gh-pages

cd -

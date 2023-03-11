# deploy page

time=$(date "+%Y-%m-%d %H:%M:%S")

git add .
git commit -m "update at $time"

npm run build
git add docs/.vuepress/dist
git commit -m "dist subtree commit"
git subtree push --prefix docs/.vuepress/dist origin page

# npm publish
npm login
npm version patch
npm publish
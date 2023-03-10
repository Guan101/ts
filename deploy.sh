# 确保脚本抛出遇到的错误
set -e

time=$(date "+%Y-%m-%d %H:%M:%S")

git add .
git commit -m "update at $time"
git push -f git@github.com:Guan101/ts.git note  
# 笔记
# 打包生成静态文件
npm run build

# 进入打包好的文件夹
cd docs/.vuepress/dist

# 创建git的本地仓库，提交修改
git init
git add -A
git commit -m 'deploy'

# 覆盖式地将本地仓库发布至github，因为发布不需要保留历史记录
# 格式为：git push -f git@github.com:'用户名'/'仓库名'.git master
git push -f git@github.com:Guan101/ts.git page
# gitbash 下 运行 npm run deploy 既可一键部署
cd -
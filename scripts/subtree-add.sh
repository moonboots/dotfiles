set -e
url=$1
dir=$2
commit=$3
set -u

project_name=$(printf $url | sed -e 's#.*/##' -e 's#.git$##')
git remote add -f subtree/$project_name $url
git subtree add --prefix $dir/$project_name subtree/$project_name $commit --squash

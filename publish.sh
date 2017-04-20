#!/bin/bash
echo "Start..."

check_result(){
	if [[ ${1} = 0 ]]; then
        echo -e "\033[31m == ${2}: 成功! \033[0m"
    else
        echo -e "\033[31m == ${2}: 失败! \033[0m"
        exit 1
    fi
}

# Svn
echo "start update"
svn up -q .
check_result $? "update"

# Git
echo "git pull"
git pull -q -u origin master
check_result $? "pull"

echo "git add"
git add .
check_result $? "add"

echo "git commit"
git commit -q -m "auto update by shell"
check_result $? "commit"

echo "git push"
git push -q -u origin master
check_result $? "push"

echo "Done."
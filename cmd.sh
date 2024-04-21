git fetch origin develop

git log --oneline --decorate --graph --all

git merge origin/develop

git rebase origin/develop

git push origin develop

git push origin develop --force


==================

git checkout develop

git pull origin develop

git checkout -b feature/FA-40-unknown-activity-display-transactions-logic

git push -u origin feature/FA-40-unknown-activity-display-transactions-logic

git branch --show-current
===========
git checkout develop
git pull origin develop
git merge feature/FA-81-Create-custom-component-search

ok
=============
git checkout develop
git pull origin develop
git checkout -b feature/your-feature-name
git add .
git commit -m "Describe your changes here"
git push -u origin feature/your-feature-name
git checkout develop
git pull origin develop  # Ensure there are no new changes
git merge feature/your-feature-name
git push origin develop

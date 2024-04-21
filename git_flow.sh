#!/bin/bash

# Initialize a new Git repository
git init

# Add remote repository
git remote add origin https://github.com/DEVOPS-HAMZA/git.git

# Create and check out the 'develop' branch
git checkout -b develop

# Create a feature branch
git checkout -b feature_branch

# Simulate some feature development
touch feature.txt
git add feature.txt
git commit -m "Add feature"

# Push feature branch to remote
git push origin feature_branch

# Merge the feature branch into 'develop'
git checkout develop
git merge feature_branch -m "Merge feature into develop"

# Push 'develop' to remote
git push origin develop

# Create a release branch from 'develop'
git checkout -b release/1.0.0

# Simulate release preparation
echo "Release notes for 1.0.0" > release_notes.txt
git add release_notes.txt
git commit -m "Prepare release 1.0.0"

# Push release branch to remote
git push origin release/1.0.0

# Finish the release by merging into 'master' and tagging
git checkout master
git merge release/1.0.0 -m "Release 1.0.0"
git tag -a 1.0.0 -m "Tag 1.0.0"

# Push 'master' and tags to remote
git push origin master
git push origin --tags

# Hotfix: Create a hotfix branch from 'master'
git checkout -b hotfix/0.2 master

# Simulate hotfix development
echo "Hotfix applied" > hotfix.txt
git add hotfix.txt
git commit -m "Hotfix 0.2"

# Merge the hotfix into 'master' and 'develop', then tag
git checkout master
git merge hotfix/0.2 -m "Hotfix 0.2"
git tag -a 0.2 -m "Tag 0.2"

# Push 'master' and tags to remote
git push origin master
git push origin --tags

git checkout develop
git merge hotfix/0.2 -m "Merge hotfix 0.2 into develop"

# Push 'develop' to remote
git push origin develop

# Keep feature and hotfix branches for now
# They can be deleted later if needed

# Print out the branch structure
echo "Branch structure created:"
git log --oneline --all --graph --decorate

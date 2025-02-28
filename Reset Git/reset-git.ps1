function Reset-Git {
    git fetch
    git reset --hard origin/main
    git push --force
}

#!/bin/bash

branch-name() {
    echo $(git branch | grep "\*" | sed s/*\ //g)
}

files-changed() {
    STAGED="$(git status --porcelain | grep "^[^? ]" | wc -l | tr -d ' ')"
    UNSTAGED="$(git status --porcelain | grep -v "^[^? ]" | wc -l | tr -d ' ')"
    RESULT=" "
    if [ $STAGED != "0" ]; then
        RESULT="$RESULT ▴$STAGED"
    fi
    if [ $UNSTAGED != "0" ]; then
        RESULT="$RESULT ▵$UNSTAGED"
    fi
    echo "$RESULT"
}

maybe-rebasing() {
    if [ -d "$1/rebase-merge" ]; then
        echo " (rebasing)"
    fi
}

_gitstatus() {
    echo "$(branch-name)$(files-changed)$(maybe-rebasing $1)"
}

# Entry point to test if we are even in a git repo
gitstatus() {
    GIT_DIR="$(git rev-parse --git-dir 2>/dev/null)"
    if [ "$GIT_DIR" ]; then
        echo $(_gitstatus $GIT_DIR)
    else
        echo ""
    fi
}

echo $(gitstatus)

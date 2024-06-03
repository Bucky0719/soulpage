#!/bin/bash

docker login -u bucky0838 -p dckr_pat_79C2h7PDN21tTnkWp-4-xSNlHIg

if [[ $GIT_BRANCH == "origin/main" ]]; then
    sh "chmod +x build.sh"
    sh "./build.sh"
    docker tag frontend bucky0838/soulpage
    docker push bucky0838/soulpage

else
    echo "Deploy Error. Image not pushed."
fi

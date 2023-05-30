#!/bin/bash

git pull origin master

mvn compile
mvn package

mvn pmd:check
mvn test

git add .
git commit -m "Automatizado"
git push origin master

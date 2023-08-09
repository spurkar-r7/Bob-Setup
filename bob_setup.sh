#!/bin/bash
echo "

Hello! I am the Bob Installer 🤖 I am currently installing the following 
applications onto your device 

-Brew
-Google Cloud
-Git
-Postgresql
-Elasticsearch"


echo "

|||||||||||||||||||||||||
|                       |
|  Installing Homebrew  | 
|                       |
|||||||||||||||||||||||||

"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "

|||||||||||||||||||
|                 |
|  Installing Go  | 
|                 |
|||||||||||||||||||

"
brew install go

echo "

|||||||||||||||||||||||||||||
|                           |
|  Installing Google Cloud  | 
|                           |
|||||||||||||||||||||||||||||

"
brew install --cask google-cloud-sdk

echo "Checking Google Cloud Version to verify proper installation"
gcloud version

echo "

||||||||||||||||||||
|                  |
|  Installing Git  | 
|                  |
||||||||||||||||||||

"
brew install git 

echo "Checking Git Version to verify proper installation"
git version

echo "

|||||||||||||||||||||||||
|                       |
|  Installing Postgres  | 
|                       |
|||||||||||||||||||||||||

"
brew install postgresql@14

echo "

|||||||||||||||||||||||||||||
|                           |
|  Installing Elasticsearch | 
|                           |
|||||||||||||||||||||||||||||

"
cd /usr/local/Homebrew/Library/Taps/elastic/homebrew-tap
git fetch origin pull/144/head:patch-1
git checkout patch-1
brew tap elastic/tap
brew install elastic/tap/elasticsearch-full
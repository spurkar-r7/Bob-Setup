#!/bin/bash
echo "

Hello! I am the Bob Installer 🤖 I am currently installing the following 
applications onto your device 

-Brew
-Google Cloud
-Git
-Postgresql
-iTerm2
-Visual Studio Code"


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

|||||||||||||||||||||||||
|                       |
|  Installing iterm2    | 
|                       |
|||||||||||||||||||||||||

"
brew install --cask iterm2

echo "

||||||||||||||||||||||||||||||||||
|                                |
|  Installing Visual Studio Code | 
|                                |
||||||||||||||||||||||||||||||||||

"
brew install --cask visual-studio-code

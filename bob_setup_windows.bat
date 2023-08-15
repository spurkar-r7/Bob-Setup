@echo off
echo "Hello! I am the Bob Installer 🤖 Please make sure to Install Chocolatey before running me so I can install the following applications onto your device 

-Google Cloud
-Git
-Postgresql
-Visual Studio Code
-elasticsearch"


echo "

|||||||||||||||||||
|                 |
|  Installing Go  | 
|                 |
|||||||||||||||||||

"
choco install golang

echo "

|||||||||||||||||||||||||||||
|                           |
|  Installing Google Cloud  | 
|                           |
|||||||||||||||||||||||||||||

"
choco install gcloudsdk

echo "

||||||||||||||||||||
|                  |
|  Installing Git  | 
|                  |
||||||||||||||||||||

"
choco install git.install

echo "

|||||||||||||||||||||||||
|                       |
|  Installing Postgres  | 
|                       |
|||||||||||||||||||||||||

"
choco install postgresql14

echo "

||||||||||||||||||||||||||||||||||
|                                |
|  Installing Visual Studio Code | 
|                                |
||||||||||||||||||||||||||||||||||

"
choco install vscode

echo "

||||||||||||||||||||||||||||||
|                            |
|  Installing Elasticsearch  | 
|                            |
||||||||||||||||||||||||||||||

"
choco install elasticsearch

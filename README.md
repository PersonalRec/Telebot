# Telebot
ChatGPT-based bot for Telegram


# Steps:

1. Create a github repository, e.g. github.com/PersonalRec/Telebot
2. Clone the repository.
    git clone github.com/PersonalRec/Telebot
3. Initialize the new go module.
    git init github.com/PersonalRec/Telebot
4. Add Telebot to your dependencies.
    #go get -u gopkg.in/tucnak/telebot.v2
    go get -u gopkg.in/telebot.v3  <-- use this one
7. Create the main.go file. Input some code.
    touch main.go
5. Create the "cmd" folder, enter it, and create the kbot.go file. Input some code.
    mkdir cmd
    cd cmd
    touch kbot.go
6. Create the root.go file for cobra. Input some code.
    touch root.go
7. Create the version.go file. Input some code.
    touch version.go

7. Go to the root folder. Add to the git all files that were changed. Make sure that all files were added by checking the git status. Make first commit. Push the changes.
    cd ..
    git add .
    git status
    git commit -am "init commit"
    git push
8. Format our go file. Download and install our go packages.
    gofmt -s -w ./
    cd cmd
    go get
9. Build our programm to make a binary file.
    go build -ldflags "-X="github.com/PersonalRec/Telebot/cmd.appVersion=v1.0.1

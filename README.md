# Telebot
ChatGPT-based bot for Telegram


# Steps:

1. Create a github repository, e.g. github.com/PersonalRec/Telebot
2. Clone the repository.
    git clone github.com/PersonalRec/kbot
3. Initialize the new go module.
    git init github.com/PersonalRec/kbot
4. Add Telebot to your dependencies. Install cobra.
    #go get -u gopkg.in/tucnak/telebot.v2
    go get -u gopkg.in/telebot.v3  <-- use this one
    go install github.com/spf13/cobra-cli@latest
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
9. Go to the root directory. Build our programm to make a binary file.
    go build -ldflags "-X="github.com/PersonalRec/kbot/cmd.appVersion=v1.0.1
10. Test the bot with the "start" command.
    ./kbot start
11. Make bot settings with the BotFather from Telegram. Get the API key.
12. Read the API key in a safe manner. Look at the variable.
    read -s TELE_TOKEN
    <telegram_api_token>
    echo $TELE_TOKEN
13. Export the variable end start our bot.
    export TELE_TOKEN
    ./kbot start
14. Add some more code to the kbot.go file. Push everything to the repo. Build new binary file. 
    git add .
    git commit -am
    git push
    go build -ldflags "-X="github.com/PersonalRec/kbot/cmd.appVersion=v1.0.2
15. Set again the API variable. Start the app.
    read -s TELE_TOKEN
    <telegram_api_token>
    export TELE_TOKEN
    ./kbot start
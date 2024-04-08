# Makefile & Dockerfile

1. Create a Makefile.

2.  Test it.

    VSCode : cd .. && gofmt -s -w ./

3. Create a tag for the repo:
    git tag -a v1.0.1 -m "My first version"

4. Build the app
    make build

5. install dpkg
    Mac Terminal: brew install dpkg

6. install lint 
    go install golang.org/x/lint/golint@latest
    export PATH=$PATH:$HOME/go/bin
    make lint

7. Create Dockerfile

8. Build the container
    docker build .

9. Run the container
    docker run <container_id>

10. 
    make build
    make image
    make push

11. docker run yellowpers/kbot:<version>

12.  ./kbot # Error!
13. file ./kbot
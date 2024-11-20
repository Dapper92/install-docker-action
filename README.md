# install Docker Action
this Github Action inistalls Docker Using Official Docker Installation commands

## Usage

to use this action in yuour repository , create a workflow (e.g  ` .github/workflow/install-docker.yaml`) and the following content:

```yaml
name: install Docker
on: [push]
jobs:
 install-docker:
    runs-on: ubuntu latest
    steps:
     -  name: checkout repository
        uses: actions/checkout@v2
     -  name: install Docker
        uses: dapper92/install-docker-actions@v1
     -  name: run Docker version
        run: docker --version
     -  name: build Docker image
        run: docker build -t whatever:1 . 
     -  name: Run tests
        run: docker run whatever:1 test      
```           
### Another step: commit and push
commit your changes and push them to Github:
```sh
git add.
git commit -m "initial commit -Add Github Action to install Docker
git push origin master
```

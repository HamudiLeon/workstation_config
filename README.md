# workstation_config
My Main Workstation Configuration including fish, shell, git etc.


# git help

Initialize a Repo 

### configure local git to work 


```
git config --global user.name "Leon K."
git config --global user.email "leonk@gmail.com"

```

# Initialize git
```
git init
```
commit whether you have new or changes
```
git commit -m 'your message'
```
Git Add the Remote Repository if new 
```
 git remote add origin  URL-to-REMOTE-REPO
```
Git clone the URL 
```
git clone URL-to-REMOTE-REPO
```
Git push the Origin master/main branch
```
git push -u origin main
```
Git Change the branch to Main if master

```
git branch -M main
```
Git set up the remote upstream url 

```
git remote add upstream https://github.com/HamudiLeon/Sartorius-AG.git
```

## Git workflow to EDIT / ADD / COMMIT / PUSH /LOG
As simple you can create one line function to do this 

```
 git add --all
 # or git add . or use --force to force add
 git commit -m -a 'your message'
 # see status
 git status 
 ## push to origin main branch 
 git push origin main #commit to remote
 ## show logs
 git log --graph
 
``` 

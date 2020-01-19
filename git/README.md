Tips
---

### Config Users

```
git config --global user.name "izhengfan"
git config --global user.email "mrzhengfan@gmail.com"
```

### Do not track file mode changes 

```
git config core.fileMode false
```

### Config global ignore

```
git config --global core.excludesfile ~/.gitignore_global
```

### Git rebase

```
# put the changes of local branch to the end of origin/master branch timeline
git remote update origin
git rebase origin/master
```
### Check out to a temporary branch:

```
git checkout --orphan TEMP_BRANCH
```

### SSH keygen
```
mkdir ~/.ssh 
cd  ~/.ssh 
ssh-keygen -t rsa -C "YOUR_EMAIL@YOUREMAIL.COM"
```

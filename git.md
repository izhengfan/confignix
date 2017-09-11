### Config Users

```
git config --global user.name "izhengfan"
git config --global user.email "mrzhengfan@gmail.com"
```

### Do not track file mode changes 

```
git config core.fileMode false
```

### Git rebase

```
# put the changes of local branch to the end of origin/master branch timeline
git rebase origin/master
```

### SSH keygen
```
mkdir ~/.ssh 
cd  ~/.ssh 
ssh-keygen -t rsa -C "YOUR_EMAIL@YOUREMAIL.COM"
```

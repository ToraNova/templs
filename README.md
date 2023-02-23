# Templs
this repository aims to allow quick template creations, using branches to differentiate templates

```
git clone -b <template-name> <this-repo> <dest-dir>
```

if you cloned the master branch, you may fetch all the branches with
```
git fetch --all
```

additionally, you may also fetch a just single branch, then checkout to it
```
git fetch <remote> <branch>
git checkout -b <branch>
```

rmb to delete the .git folder if you want to use the template (as to not embed this in another git repo).
you can just run the `usethis.sh` script to cleanup.

## Creating new templates
To create new templates, first checkout to the master branch `git checkout master` then checkout to the new branch (template) `git checkout -b <new-branch>`. This prevents bringing any files from the old template to the new.

Once done, push the new branch to the remote `git push <remote> <new-branch>` to register the new template.

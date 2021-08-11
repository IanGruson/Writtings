.so ./macros.ms
.TL
Git Cheatsheet
.AU
Meedos

.SH
Introduction 
.LP
This is a short cheatsheet on how I use Git daily. I don't use the more complex
commands yet as I haven't learned them. Hope this is useful to some of you.
I'll try to break it up in use-cases or scenarios with examples as I believe it
is easier to understand. It is highly suggested that you consult the man pages
for every command that you try as it is impossible to cover all the flags in
this cheatsheet.

.SH 
Initializing a new git repo
.LP
On an existing codebase/project or on a empty directory type : 
.cm "git init"
This command creates a hidden folder named .git where all the git magic happens
(hashes, working dir, etc...).
.br
By default this creates the default branch "master" which you are on now, more
on that later.
.SH 
Most basic usage 
.LP
The following commands are the most used commands by far, you'll do them a
couple of times a day. 
.SH 2
Add work to the index
.cm "git add ."
This command adds your files to the index waiting to be committed. The "." means
all that is within the current directory ("*" works fine too). As an image, "git
add" takes a snapshot of the content of the working tree, that snapshot will
then be used for the next commit. 
.SH 3
Committing
To save your changes to the repository 
.cm "git commit -m 'This is a commit message' " 
This creates a new commit with the current index's content. 

.PS
C0 : circle "C0" at (0,0) shaded "lightblue"; 
box invisible "Master" at (0,-0.5) outline "lightblue";
C1 : circle "C1" at (1,0) shaded "lightblue";
line from C0.e to C1.w;
HEAD : box invisible "HEAD*" at (1.5, 0.7);
arrow from HEAD.s to C1.n;
.PE

HEAD* is where you are currently in the tree. Doing another commit will continue the tree
to the right with "C2" so on and so forth.

.SH 2
Pushing to a remote
.PP
Let's say you are working with a team and the code base is meant to be stored on
a remote server such as gitlab.com, gitea, or even github.com. You first need to
create a repository on one of those services and push you local changes to that
remote. The next commands will assume you already created a repo at
https://gitlab.com/meedos/test_repo.git
.SH 3 
Adding a remote
.PP
You can add a remote with a given name and a url with. 
.cm "git remote add origin https://gitlab.com/meedos/test_repo.git"
A local repo can have multiple remotes.
You can then proceed to push ("send") your changes to the repo with the adequate
name : 
.cm "git push origin master"
Also you can set a default upstream for a branch that way you don't have to type
the whole command every time.
.cm "git push --set-upstream origin master
This way you can simply type : 
.cm "git push"
To push to origin/master.
.SH 2
Pulling a remote
.PP
Now, let's say a coworker pushes work to you remote repository, or you simply
want to access you work from a different computer, you'll want to pull that work
onto your local repository. To achieve this use : 
.cm "git pull origin master"
Or if you've setup the upstream, simply : 
.cm "git pull"

.UL "Note : " this command fetches the work and merges it on your branch. In some
cases it is preferable to use "git fetch" instead to avoid automatic merging.

If you are extremely lucky and work alone, you could use only these commands and
get away with it. But that won't happen and there's is so much more useful
aspects to git.

.SH 2
Branching 
.PP 
Branching as it names implies allows you to create a diverging branch to your
git tree. Branching should become second nature as it is a good practice to
implement a feature on a separate branch without messing out your master branch.
Some create a branch for each versions, for each big functionality (or User
Story), or even a branch per platform (Linux, Windows) in some cases.
.br
In any case, to create a branch type (and choose a branch name) : 
.cm "git branch [BRANCH_NAME]"
Let's say we named our branch Sprint-1. The result can be mentally seen as : 
.PS
C0 : circle "C0" at (0,0) shaded "lightblue"; 
box invisible "Master" at (0,-0.5) outline "lightblue";
C1 : circle "C1" at (1,0) shaded "lightblue";
box invisible "Master*" at (1,-0.5) outline "lightblue";
box invisible "Sprint-1" at (1,-0.7) outline "lightblue";
line from C0.e to C1.w;
HEAD : box invisible "HEAD*" at (1.5, 0.7);
arrow from HEAD.s to C1.n;
.PE
The new branch is up to date from the branch it was created from. 
.SH 2 
Checking out
.PP
Now is a good time to talk about "git checkout". This command allows you to move
around the tree. You can switch branches or go to previous commits
.br
.UL "switch branch : "
.cm "git checkout Sprint-1"
.UL "Go to commit C0 :"
.cm "git checkout C0"
result : 
.PS
C0 : circle "C0" at (0,0) shaded "lightblue"; 
box invisible "Master" at (0,-0.5) outline "lightblue";
C1 : circle "C1" at (1,0) shaded "lightblue";
box invisible "Master*" at (1,-0.5) outline "lightblue";
box invisible "Sprint-1" at (1,-0.7) outline "lightblue";
line from C0.e to C1.w;
HEAD : box invisible "HEAD*" at (0.5, 0.7);
arrow from HEAD.s to C0.n;
.PE


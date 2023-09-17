# Welcome new TMAV Members!

This is a basic tutorial meant to get you acquainted with two important tools of the design team:
Git, a version control software for programming, <br>and BASH, the basic shell used in Linux, Unix, and Mac systems.
By the end of this tutorial, you will be able to:</p>
<ul>
<li>Comfortably Navigate the Linux File System from the shell</li> 
<li>Create files, and edit them using either nano or vim.</li> 
<li>Modify the permission level of files to ensure they can be executed</li> 
<li>Source files to modify the environment</li> 
<li>Install and log into GitHub on a Linux instance</li> 
<li>Initialize a Local GitHub repository</li> 
<li>Clone a remote Repository</li> 
<li>Create branches for your own development</li> 
<li>Add and Commit changes to a local branch, and Push them to a remote repository</li> 
<li>Create and merge pull requests with the main branch to update the code base</li> 
</ul>
Before you start, ensure you have created an account on GitHub, and a lead has added you to the team repository. Without access to the team repository, you will not be able to complete the tutorial. This tutorial assumes you will be running in a Linux environment. Ensure you either have Linux running in a virtual machine, your main operating system, or in WSL (Windows Subsystem for Linux).

## Tutorial Begins

Start by moving to your home Linux directory. This can be accomplished using the `cd` command. Enter `cd ~`. The ~ represents the home directory for the current user. Next, create a new directory to work in using `mkdir`. You can name it whatever you want. For example, `mkdir cool_Programs`, and then move into this directory.

Then, create a bash script. This can be done in one of two ways: Either create the file using `touch` or simply enter the name of the file after a text editor command such as `nano` or `vim`. For example, `touch firstFile.bash` or `nano firstFile.bash`. Note that whatever the filename, the extension must be .bash. You will need to manually open this file with a text editor after creation (if touch was used), which can be accomplished by running `nano <filename>` where filename is what you called your file. Then, using ctrl + shift + v paste in the filler script provided to you. Then, provide the script with execution permissions using `chmod +x <filename>.bash`.

Finally, run the script using `bash <filename>.bash` and enjoy! Congratulations, you can now navigate the Linux file system and modify files!

Next, install Git using the command: `sudo apt-get install git -y`. This will install Git and all dependencies. Once the installation has finished, initialize a local repository using: `git init .` The '.' will initialize the repository in the current directory.

Now proceed to GitHub.com, and log in, and create a new repository. Name the repository (henceforth referred to as `repo` for simplicity), and ensure it is public. Create the repository, and copy the https protocol link to the repo. Next, enter the following command: `git remote add origin https://github.com/CGCCollin/Demo.git`. This will cause your local repo to track the one you created on GitHub under the name "origin."

GitHub serves two main purposes:
<ol>
<li>To provide version control services</li>
<li>To provide cloud storage for a code base accessible by other programmers to enable collaboration on a larger scale.</li>
</ol>

To take advantage of these services, you must upload or "push" your code to GitHub.
This requires you first add changes to the branch using: `git add <filename>`
where <filename> represents the name of any file(s) you wish to add to the repo.
Alternatively, '.' can be used to add the entire directory.
Next, these changes must be committed to before they can be pushed to the repo.
To commit changes, enter: `git commit -m "message"` where message is a summary of changes made to the code base. For a first-time commit, simply write "Initial commit."
Finally, the exciting part, pushing code to the remote repository.
To push your code to the remote repository, use the command: `git push --set-upstream origin master` This will push all changes made to the master branch of the remote repo.
Note that this should only ever be done for initial commits. Think of branches as safely isolated spaces you can code in, and revert back to old branches when something goes awry. To create a branch, use: `git branch <name>` where <name> is whatever you wish to call the branch.
Keep this in mind as you will need this information later. 
Regardless, congratulations you just created and uploaded code to your own remote repository almost entirely via command-line.

Now time for something a little bit more advanced,
begin by installing the GitHub to your Linux instance using `sudo snap install gh`
This will install GitHub on the Linux instance enabling you to login. Without it, you will not be able to access private repos.
To login, enter the command: `gh auth login`<br /><br />
You will then be asked:<br />
```? What account do you want to log into?``` Navigate using the arrow keys and select GitHub.com <br />
```? What is your preferred protocol for Git operations?``` choose HTTPS<br />
```? Authenticate Git with your GitHub credentials?``` enter Y<br />
```? How would you like to authenticate GitHub CLI?``` choose Login with a web browser<br />

Then press enter to open the login UI in the browser. From here, login and paste the code from the terminal into the UI as requested. Upon successful login, the CLI (command line interface) will indicate so.
<br>
<br>
Next, switch back to the ~ directory, and enter the command: `git clone https://github.com/TMet-Aerial-Vehicles/GitTut-2`<br>
You will notice that there is an issue with the script in the repo. Once you find it, proceed to <a href="https://github.com/TMet-Aerial-Vehicles/GitTut-2/issues">https://github.com/TMet-Aerial-Vehicles/GitTut-2/issues</a> or the issue page on the repo, and create an issue regarding what you find in the code.
Issues in GitHub are usually used for tracking bugs and new features for projects. <br> 
Simply title the issue relating to the bug and provide comments describing what the issue is. <br>
Once created, you will need to make a new branch for the issue under the development section of the issue page. Then, fetch the updated repo using: <br>

```git fetch origin```, and change to the new branch using: ```git checkout <branchname>``` where \<branchname\> is the name of the branch you created for the issue. (Upon creating a branch for the issue, GitHub will provide the relevant commands. Simply select "checkout locally")

Now, remember the add, commit, push loop from earlier? Modify the script to function properly, and repeat the add-commit-push loop to upload the updated code to the repo. You will then need to create a pull request.

Pull requests are requests to merge your changes with the main branch of code. To create a pull request, visit the repository page. Since you recently pushed a new branch, GitHub should provide a UI to take you to the compare and pull request tab. Please click the button to do so.
Next, simply click the create pull request button on the following page. Normally, reasoning and a good title are required in practice, but for the sake of brevity, we skip this part. Note that we will reject your pull request, as the code must stay broken for future users.<br><br>

Congratulations! You've finished the TMAV GitHub and Linux tutorial! But uh, <em>one last thing...</em><br>
The Linux shell runs a startup script for every new terminal instance you open. It will be very important to modify this later for using ROS.
To modify it, enter `nano ~/.bashrc` and head to the very end of the file. Once there, type: `echo "Hello $USER"` then save.
To actually view these updates, you can either source the bash script using `source ~/.bashrc` or simply open a new terminal instance. Your computer should now greet you in every terminal.
<br><br>
Alright, that's it. For real this time. Now go forth and code!

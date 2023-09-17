<h1>Welcome new TMAV Members!</h1>
<p>This is a basic tutorial meant to get you aquinted with two important tools of the design team:
Git, a version control software for programming, <br>and BASH, the basic shell used in linux, unix, and mac systems.
By the end of this tutorial, you will be able to:</p>
<ul>
<li>Comfortably Navgiate the Linux File System from the shell</li> done
<li>Create files, and edit them using either nano or vim.</li> done
<li>Modify the permission level of files to ensure they can be executed</li> done
<li>Source files to modify the environement</li> tbd
<li>Install and log-into github on a linux instance</li> done
<li>Initialize a Local github repository</li> done
<li>Clone a remote Repository</li> done
<li>Create branches for your own development</li> done
<li>Add and Commit changes to a local branch, and Push them to a remote repository</li> done
<li>Create and merge pull requests with the main branch to update the code base</li> tbd
</ul>
Before you start, ensure you have created an account on GitHub, and a lead has added you to the team repository. Without access to the team repository, you will not be able to complete the tutorial. This tutorial assumes you will be running in a linux environement. Ensure you either have a Linux running in a virtual machine, your main operating system, or in WSL (Windows Subsystem for Linux).


<h2>Tutorial Begins</h2>
<br>

Start by moving to your home linux directory. This can be accomplished using the ```cd``` command. Enter ```cd ~``` The ~ represents the home directory for the current user. Next, create a new directory to work in using ```mkdir``` you can name it whatever you want. For example ```mkdir cool_Programms``` and then move into this directory.

Then, create a bash script. This can be done in one of two ways: Either create the file using ```touch``` or simply enter the name of the file after a text editor command such as ```nano``` or ```vim```. For example ```touch firstFile.bash``` or ```nano firstFile.bash```. Note that whatever the filename, the extension must be .bash. You will need to manually open this file with a texteditor after creation (if touch was used) which can be accomplished by running ```nano <filename>``` where filename is what you called your file. Then, using ctrl + shift + v paste in the script provided to you. Then, provide the script with execution permissions using ```chmod +x <filename>.bash``` <br>
Finally, run the script using ```bash <filename>.bash``` and enjoy!<br>
Congratulations, you can now navigate the linux filesystem and modify files!

Next, install git using the command: ```sudo apt-get install git -y``` This will install git and all dependancies.
Once the installation has finished, intialize a local repository using: ```git init .```
The '.' will initialize the repository in the current directory.

Now proceed to github.com, and login, and create a new repository.
Name the repository (hence-forth reffered to as ```repo``` for simplicity), and ensure it is public.
Create the repository, and copy the https protocol link to the repo.
Next, enter the following command: ```git remote add origin https://github.com/CGCCollin/Demo.git```
This will cause your local repo to track the one you created on github under the name "origin."

Github serves two main purposes:
<ol>
<li>To provide version control services</li>
<li>To provide cloud storage for a code base accessible by other programmers to enable collaboration on a larger scale.</li>
</ol>

To take advantage of these services, you must upload or "push" your code to github.
This requires you first add changes to the branch using: ```git add <filename>```
where <filename> represents the name of any file(s) you wish to add to the repo.
Alternatively, '.' can be used to add the entire directory.
Next, these changes must be comitted to before they can be pushed to the repo.
To commit changes, enter: ```git commit -m "message"``` where message is a summary of changes made to the code base. For a first time commit, simply write "Initial commit".
Finally, the exciting part, pushing code to the remote repository.
To push your code to the remote repository, use the command: ```git push --set-upstream origin master``` This will push all changes made to the master branch of the remote repo.
Note that this should only ever be done for initial commits. Think of branches as safely isolated spaces you can code in, and revert back to old branches when something goes awry. To create a branch, use: ```git branch <name>``` where <name> is whatever you wish to call the branch.
Keep this in mind as you will need this information later. 
Regardless, congratulations you just created and uploaded code to your own remote repository almost entirely via command-line.

Now time for something a little bit more advanced,
begin by installing the github to your linux instance using ```sudo snap install gh```
This will install github on the linux instance enabling you to login. Without it, you will not be able to access private repos.
To login, enter the command: ```gh auth login```<br /><br />
You will then be asked:<br />
```? What account do you want to log into?``` Navigate using the arrow keys and select GitHub.com <br />
```? What is your preferred protocol for Git operations?``` choose HTTPS<br />
```? Authenticate Git with your GitHub credentials?``` enter Y<br />
```? How would you like to authenticate GitHub CLI?``` choose Login with a web browser<br />

Then press enter to open the login UI in the browser. From here, login and paste the code from the terminal into the UI as requested. Upon successful login, the CLI (command line interface) will indicate so.
<br>
<br>
Next, switch back to the ~ directory, and enter the command: ```git clone https://github.com/TMet-Aerial-Vehicles/GitTut-2```<br>
You will notice that there is an issue with the script in the repo. Once you find it, proceed to <a href="https://github.com/TMet-Aerial-Vehicles/GitTut-2/issues">https://github.com/TMet-Aerial-Vehicles/GitTut-2/issues</a> or the issue page on the repo, and create an issue regarding what you find in the code.
Issues in github are usually used for tracking bugs, and new features for projects. <br> 
Simply title the issue relating to the bug, and provide comments describing what the issue is. <br>
Once created, you will need to make a new branch for the issue under the relevant section. Then, fetch the updated repo, and change to the new branch (Upon creating a branch for the issue, github will provide the relevant commands.)

Now, remember the add, commit, push loop from earlier? modify the script to function properly, and repeat the add-commit-push loop to upload the updated code to the repo. You will then need to create a pull request.

Pull requests are requests to merge your changes with the main branch of code. 







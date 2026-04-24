# Task 4
## Summary
### vim-config
* These dotfiles do a few different but useful things. In the folder vim-config you can find two different files. .vimrc is used to change the Vim text editor for instance it changes the color scheme and provides an easier way to see indentation levels. The script makes sure these vim plugins are installed every time upon startup so you will always have them.
### homefiles
* Overall this task was about making aliases for commands in .bash_aliases that is used in the .bashrc file. This means that these commands aliases are useable every time a terminal is started up. The bash_aliases file is stored in the dotfiles directory and has a script that will update the home directory via symlinks with the aliases present in the dotfile side.
### sys-installs
The files here downloads if you have the proper permissions AWS CLI. It completely downloads, unzips, and installs with a message how to check AWS CLI.
## How to
* To clone all of these folders you just use `git clone` putting them on your local machine. To utilize the contents is a much more in-depth problem. For the vim editor changes you need to run the script. The biggest catch here is to change the pathing from what is written in there to what your system is requiring. 
* For the homefiles you need to make a .bash_aliases file and paste the contents into it. From there you need to run the script and of course check the pathing and make sure it aligns with your system.
* The sys-install is very straight forward run the script with root permissions and that is it.
## Future
* The biggest improvement I want to make later down the road is adding commits to each script ensure for the future I know what each section is doing. Also maybe add some more depth in the downloading and installing department.
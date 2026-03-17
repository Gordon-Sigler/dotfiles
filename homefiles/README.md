# Dotfile 2

## Summary
Overall this task was about making aliases for commands in .bash_aliases that is used in the .bashrc file. This means that these commands aliases are useable every time a terminal is started up. The bash_aliases file is stored in the dotfiles directory and has a script that will update the home directory via symlinks with the aliases present in the dotfile side.

## .bash_aliases
The file .bash_aliases has all the aliases and what they do. For example in mine it has:
* c = clear meaning every time I type c and hit enter it runs the clear command
* .. = "cd .." meaning now if I want to go back a directory I just have to type ".." instead of "cd ..".
* update = "sudo apt update && sudo apt upgrade -y" this makes it where when I want to update and upgrade while already saying yes to confirm I need to run update.

* These alias's make things similar and easier overall. Being able to take a command that might take awhile to type out or that you are constantly using and make it as short as you need is amazing.

## aliases_script.sh
* The script creates a symbolic link from .bash_aliases in my dotfile to my home directory's .bash_aliases.  

* First I started by declaring my variables with 
```
dot="/home/g_sigler/dotfiles/homefiles/.bash_aliases"
home="/home/g_sigler/.bash_aliases"
```

* The second part of the code checks to see if the .bash_aliases exists in my home directory and to see if there is a symbolic link or not. After that it moves my .bash_aliases file to a .bash_aliases.backup file.
```
if [ -f "$home" ] && [ ! -L "$home" ]; then
        mv "$home" "$home.backup"
fi
```

* The third part makes the actual symbolic link.
```
ln -sf "$dot" "$home"
```

* Lastly it produces a statement telling the user to reload the environment.
```
echo " Reload your environment by using source ~/.bashrc or logging out"
```

### Resources
[This link explained and showed how to check for a created symlink](https://stackoverflow.com/questions/5767062/how-to-check-if-a-symlink-exists) I used this to check if the symlink exists and used it for my code.

[This link helps with determining whether a directory exists](https://sentry.io/answers/determine-whether-a-directory-exists-in-bash/) I used this to see what flag I should use when checking if a file already exists.

[This link is for flags for the symbolic link](https://www.freecodecamp.org/news/linux-ln-how-to-create-a-symbolic-link-in-linux-example-bash-command/) I used this link for the flags for my symbolic link.
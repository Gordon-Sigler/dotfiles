# Task 3
## Script

```
#!/bin/bash
if [ ! $EUID -eq 0 ]; then
        echo "Requires sudo or root"
        exit 1
fi

if ! command -v apt &> /dev/null; then
        echo "Must have apt"
        exit 1
fi

read -p "Do you want to install AWS CLI? (y/n): " answer
        if [[ "$answer" == [nN] ]]; then
        exit 0
fi

if command -v aws &> /dev/null; then
        echo "a name conflict occurred"
        exit 1
fi

curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
./aws/install &> /dev/null

echo "install is complete try running 'aws --version' to check! "
```
## Description
1. The first section of this script checks the user ID to see if the script is being ran with root privileges. The reason for this is to make sure the user has the right permissions to execute the rest of this script so there won't be any errors.

2. The second section checks to see if you have the package manger apt or not, if you don't then it will exit out.

3. The third section will ask the user if the want to install AWS CLI if the answer is no (n or N) then it will exit.

4. The fourth section checks to see if aws exists if it does then it will display a message telling the user there is a name conflict. This means that aws is already installed and present on the system.

5. If all the checks are met it actually now starts the process of acquiring AWS CLI by curling, then it will unzip the newly acquired package, then lastly actually install AWS CLI.

* Of course all of this is done silently so the user isn't shown everything that is being installed, and the progress of installation. The only thing the user will see if the prompt to install, then the message saying AWS CLI is installed and how to test.

### Resources
[How can I check if a package is installed and install it if not?](https://stackoverflow.com/questions/1298066/how-can-i-check-if-a-package-is-installed-and-install-it-if-not) This showed how to check for a package. Also it gave me how to remove the messages like download complete and any error messages with &>, and of course /dev/null. I did have to use what gemini responded with when I asked google about &> and /dev/null for what the do. 

[How do I prompt a user for confirmation in bash script? [duplicate]](https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script) This reminded me of how to prompt the user within a bash script, but also how to allow a capital letter and lowercase later for a response.

[Bash command line exit codes demystified](https://www.redhat.com/en/blog/exit-codes-demystified) I used this to explain the difference between exit 0 and exit 1.

[Installing or updating to the latest version of the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) This was used to acquire AWS CLI, unzip it, and install it.

I do have to state I was having some problems with my code syntax wise and had gemini figure out why it wasn't working. Also I used the gemini response from google for a few things, for instance the -q in `unzip -q awscliv2.zip` to make it quiet. Things like that and to explain the &> which I found in the first resource. 
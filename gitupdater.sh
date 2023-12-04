#! /bin/bash

#Author: Grant
#Project: CSC-2510-001-Grant
#Use: This script is used to pull updates from a git repo on an automated schedul

# Pull the Git repository
git clone "git@github.com:ttu-bburchfield/swollenhippofinal.git"
cd swollenhippofinal
#git clone "git@github.com:gjpalasak42/test.git"
#cd test
echo "#! /bin/bash" >> gitupdatescript.sh
echo "git fetch" >> gitupdatescript.sh
echo "git pull" >> gitupdatescript.sh
chmod 755 gitupdatescript.sh
echo "* * * * * ~/swollenhippofinal/gitupdatescript.sh" | crontab -
#echo "* * * * * ~/test/gitupdatescript.sh" |crontab -
# Additional commands or script logic can go here

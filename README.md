# ubuntu-service-python

## Edit myapp.service
- Description - provide description of your service
- ExecStart - provide path to executable file
- rename myapp.service to suite your application/service name (optional)

## Edit install-myapp.service
- update path to your desired application location to be installed to (/home/myapp)
- add all pip dependencies to be installed under "Install dependecies" section (e.g. pip install mysql)
- update myapp.service to new name if myapp.service files was renamed in the above section

## Edit start-myapp.sh
- update path to the folder where your application is installed (cd /home/myapp)
- update name of your python application file name (python3 myapp.py)

## tar gz files from your repository
- create .tar.gz file with all the files except install-myapp.sh
- Copy .tar.gz file and install-myapp.sh files to server temp folder
- execute install-myapp.sh


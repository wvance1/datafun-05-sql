# datafun-05-sql

## creating project and cloning to machine

##### I creatred a new repository on GitHub. 
##### I made sure that the README.md was checked so that I could write this little note!
##### I then went to a folder on my computer, where I wanted to file to live, and I opened the terminal for that file.
##### I then cloned the repository to that folder using the following command:
```shell

git clone site_URL

```

## Adding files 

##### I then added a .py file to work in, requirements.txt to hold the required project modules, a .vinv to act as the virtual environment(instructions for that are below), and a .gitignore to hold the .venv and the .vsode file so that the virtual environment is not passed to the rest of the python environment.

## Create Project Virtual Environment

##### On Windows, create a project virtual environment in the .venv folder. 

```shell
#creates .venv file then activates it
py -m venv .venv
.venv\Scripts\Activate

```

## Install all required packages into local project virtual environment

##### This installs the required packages that are held in the requirements.txt file - requests 

```shell

#installs all files in requirements.txt
py -m pip install -r requirements.txt
#creates requirements.txt file and outputs the installed packages
py -m pip freeze > requirements.txt
```

## add docstring to .py file

##### Added a note to the top of the file bound by '''note'''

## Git add and commit 

##### Periodically, I will add, commit and push the file to the web. 

```shell
git add .
git commit -m "add .gitignore, cmds to readme"
git push origin main
```
## Add data folder and .csv

##### Manually added a data folder to the project folder, then added two .csv files in VS Code.

## created .sql

##### created a .sql file to manage info and create a database. Coppied from instrucitons.

## created book_manager.py

##### Followed instructions from canvas. again, this was to create a database and fill with info from CSV files.

## Project work

##### Followed instructions from the source link below. 

## Source
##### This project was built to the following specification:
- [datafun-05-spec](https://github.com/denisecase/datafun-05-spec)
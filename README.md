# Introduction  
Project Repository: https://github.com/DoraYeh1519/Xchange-demo  
Project File: https://drive.google.com/file/d/1gIHEWI439VHwFuOmHNzzGPNX-t2PKwRc/view?usp=sharing  
Presentation Video: https://www.youtube.com/watch?v=l_jrHp56MwI

## Project Preview
**mainpage**
![manepage](/image/mainpage.png)

**blog post**
![post](/image/post.png)

**login page**
![login](/image/login.png)

**register page**
![register](/image/register.png)

**profile**
![profile](/image/profile.png)

**new post**
![new_post](/image/newpost.png)

## Setup
#### 1. Fork or Download this repository file
#### 2. Setup the program and virtual environment:
   1. Open the terminal by ``` Ctrl+` ```
   2. Execute ``` $pip install -r requirements.txt ``` to install packages
   3. Open it in visual studio and try running it. The editor will ask you to setup virtual environment. Just do it.
#### 3. Setup Database:
   1. Import **'dbms_project.sql'** file from folder **'DataBase Setting'** into your MySQL server.
   2. Setup **username**, **password**, and **database** in the **#connect to DB** section in **main.py**
```python
   # CONNECT TO DB
    username = "" #Your username
    password = "" #Your password
    host = "localhost"
    port = 3306
    database = "dbms_project" #Your database name
    connection_string = f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}"

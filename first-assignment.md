# FIRST ASSIGNMENT

### This is the first assignment, it was essential for the practice of all we have learnt so far about the linux operating system

## QUESTIONS

Your login name: altschool i.e., home directory /home/altschool. The home directory contains the following sub-directories: code, tests, personal, misc Unless otherwise specified, you are running commands from the home directory.

a.Change directory to the tests directory using absolute pathname

b.Change directory to the tests directory using relative pathname

c.Use echo command to create a file named fileA with text content ‘Hello A’ in the misc directory

d.Create an empty file named fileB in the misc directory. Populate the file with a dummy content afterwards

e.Copy contents of fileA into fileC

f.Move contents of fileB into fileD

g.Create a tar archive called misc.tar for the contents of misc directory

h.Compress the tar archive to create a misc.tar.gz file

I. Create a user and force the user to change his/her password upon login

J. Lock a users password

K. Create a user with no login shell

L. Disable password based authentication for ssh

M. Disable root login for ssh

## SOLUTIONS

I created the user called altschool using the command `sudo adduser altschool` and i created the directories using the command `mkdir code tests personal misc`  
![created directories](./image/created%20directories.jpg)

1. `cd /home/altschool/tests`  
![](/image/a.jpg)

2. `cd tests`  
![](/image/b.jpg)

3. `echo > 'Hello A' misc/fileA`  
![](/image/c.jpg)

4. `touch misc/fileB`  
![](/image/d.jpg)

5. `cp fileA misc/fileA misc/fileC`  
![](/image/e.jpg)

6. `mv misc/fileB misc/fileD`  
![](/image/f.jpg)

7. `tar -cvf misc.tar misc`  
![](/image/g.jpg)

8. `tar -cvzf misc.tar.gz misc.tar`  
![](/image/h.jpg)

9. `sudo adduser valentine` to create a user  
    `sudo passwd --expire valentine` to ensure the password expires whenever the user logs in  
![](/image/i.jpg)

10. `sudo adduser locked` to create a user called locked  
    `sudo passwd -l locked` to lock the users password  
    `sudo passwd -S locked` to check the status, if the user is really locked or not  
    `sudo passwd -u locked` to unlock the user  
![](/image/j.jpg)

11. `sudo adduser madu --shell /usr/sbin/nologin` creates a user named madu without a login shell  
    `sudo cat /etc/passwd | grep nologin` will show all the user without login shell.  
![](/image/k.jpg)

12. To achieve this i had to edit the sshd_config file  
    `sudo vi /etc/ssh/sshd_config` this commnad will give us access into the sshd_config file then i changed the `PasswordAuthentication` to `no`  
![](/image/l.jpg)
![](/image/sshd_config%20file.jpg)

13. To achieve this i had to also edit the sshd_config file  
    `sudo vi /etc/ssh/sshd_config` this command gives me access into the sshd_config file then i changed the `PermitRootLogin` to `no`  
![](/image/m.jpg)
![](/image/sshd_config%20file%20for%20root%20login.jpg)
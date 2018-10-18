# Rails_Mongodb_Homework

**By : Erica P da Silva Correia**

#### Description :

replace the Node + Mongo vagrant application with a Rails + Mongo vagrant Application

-----

#### Tech Used :
**Virtual Box, Vagrant, Bash, Ruby on Rails**

-----
##### how to download :


1. go to the github page [**https://github.com/EricaDaSilvaCorreia**](https://github.com/EricaDaSilvaCorreia)
2. Click repositories and select the repository [**Development_Environment_Lab**](https://github.com/EricaDaSilvaCorreia/Development_Environment_Lab)
3. Click 'Clone or Download'
4. Choose between **Open in Desktop**, **Download ZIP**, **Clone with SSH**, **Clone with HTTPs**

-----
##### how to run :


1. Once Cloned or Downloaded, make sure you have Virtual box and Vagrant installed on your machine.
2. If you don't have Virtual Box installed, follow this link:[**Virtual Box**](https://www.virtualbox.org/wiki/Downloads)
If you don't have Vagrant installed, follow this link: [**Download Vagrant**](https://www.vagrantup.com/downloads.html)
3. Once installed, Open your terminal and check if vagrant has been downloaded.
4. In your terminal surn the command 'vagrant init' followed by the name of the machine image you want your virtual machine to have. in this case we are running **'vagrant init ubuntu/xenial64'**
5. Once that is done running, open your vagrant file in your text editor of choice and remove the commented out code you won't need.
6. In your text editor, check if the box name is correct and save. You should see something like this :

~~~

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

end
~~~

7. In your terminal enter the command **'vagrant up'** (depending on how many times you have run this it could take between 5 minutes to an hour).
8. Once that is done, in your terminal enter the command **'vagrant ssh'** to enter the virtual machine.
9. Still in your terminal enter the command **'sudo vagrant apt-get update && apt-get upgrade'** this will check for any updates that may have been uploaded after the version was posted and immediately upgrade.
10. Following that we will install nginx **'sudo vagrant apt-get install nginx -y'**
11. Then enter **'curl http://localhost'** to check if nginx has been installed. You should see the html of the site appear.
12. Enter the command **'ifconfig'** to get the current address of your virtual machine (inet addr).
13. Go back to the vagrant file in your text editor and inside the Vagrant.configure("2") you can add a network like so :


~~~
Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip:"192.168.12.120"

end
~~~

and Save the file before going back to your terminal. this sets up ip address that you can access from your browser on your normal machine. Open a browser and enter http:// (chosen ip) to check if it works.

14. Return to you terminal and enter the command **'vagrant reload'** to allow the virtual machine to run the changes to the config file.
15. Once this is done, enter the command  **'vagrant ssh'** to enter your machine.

-----


##### Challenges :

Overall, there weren't any challenges with this homework. It was mostly a question of research and trying things out. My main issue was getting rails and mongo to talk to each other, at irst when I ran rails s after having created a model and controller and static, it was giving me an error saying that the connection was refused. When I called mongod in the command line it replied with install mongodb-server which I did but in retrospect I think that was the opposite of what I wanted to do. 
After that it worked, in terms of rendering the People page as opposed to just the scaffold page, up until the part where I had to add data through the forms at which point it gave me an authentication error.

Will continue researching it.

-----

##### Take-Aways :

All in all I think today was very interesting. I enjoyed seeing how different the mongo connection to rails is compared to the app.js one we worked on earlier in the week. I'm definetly going to continue trying to figure out what exactly is causing these errors and whether installing the mongodb-server was the right call (something tells me it wasn't but I'll just have to research it a bit more)

I give it a 5/10.

-----

#Prep machine
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y && sudo apt-get upgrade -y

# install nginx
sudo apt-get install ruby2.4 ruby2.4-dev ruby-build -y
sudo apt-get install build-essential libgmp-dev libxml2 -y
sudo apt-get install nginx -y


# Install ruby
sudo apt-get install gem -y
sudo gem install bundler
sudo gem install rake
sudo gem install rails


# Install things that nodejs needs
sudo apt-get install python-software-properties -y

# Make sure that apt has the info it needs to install the custom version of nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# Install nodejs
sudo apt-get install -y nodejs

# Install pm2 node package manager
# sudo npm install -g pm2
# cd /home/vagrant/app/environment/app/app
# pm2 start app.js

# Conf default of nginx
sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
sudo ln -s /home/vagrant/app/environment/app/default /etc/nginx/sites-available/default
sudo service nginx restart

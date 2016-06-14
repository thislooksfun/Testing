#Steps taken from https://www.phusionpassenger.com/library/walkthroughs/deploy/nodejs/ownserver/nginx/oss/precise/install_passenger.html


#Step 1: Install nginx and Passenger
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger precise main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

sudo apt-get install -y nginx-extras passenger


#Step 2: Enable the Passenger module and restart nginx
#TODO: Just copy over our conf file?
cat /etc/nginx/nginx.conf
sudo service nginx restart

#Step 3:
sudo /usr/bin/passenger-config validate-install --auto
sudo /usr/sbin/passenger-memory-stats
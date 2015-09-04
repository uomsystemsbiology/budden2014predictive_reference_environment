#configure_core.sh sets up applications, compiles code and puts scripts
#in the appropriate places.  It runs after all the installation commands
#have completed

log=/vagrant/temp/install.log
echo Started configure_core.sh | tee -a $log

echo Copying login message to /etc/motd | tee -a $log
sudo cp /vagrant/temp/data/motd /etc/motd

echo Copying build info to home directory | tee -a $log
sudo cp /vagrant/temp/build_info.txt /home/sbl/build_info.txt

echo Copying shell scripts to home directory | tee -a $log
sudo cp /vagrant/temp/data/run_experiments.sh /home/sbl/run_experiments.sh
sudo chmod 777 /home/sbl/run_experiments.sh

sudo cp /vagrant/temp/data/generate_figures.sh /home/sbl/generate_figures.sh
sudo chmod 777 /home/sbl/generate_figures.sh

echo Linking the shell script into the root folder | tee -a $log
sudo ln -sv /home/sbl/run_experiments.sh /run_experiments.sh

echo Linking the shell script into the root folder | tee -a $log
sudo ln -sv /home/sbl/generate_figures.sh /generate_figures.sh

echo Completed configure_core.sh | tee -a $log
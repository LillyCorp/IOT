sudo nano /etc/apt/sources.list
sudo apt-get update
sudo apt-get upgrade

sudo rpi-update

sudo apt-get install -y gstreamer1.0
sudo apt-get install -y build-essential git cmake pkg-config

sudo apt-get install -y libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev

sudo apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -y libxvidcore-dev libx264-dev
sudo apt-get install -y libgtk2.0-dev
sudo apt-get install -y libatlas-base-dev gfortran

sudo apt-get install -y gdal-bin qgis
sudo apt-get install -y python2.7-dev python3-dev
sudo apt-get install -y libgtkglext1-dev
sudo apt-get install -y qtcreator

sudo apt-get install -y gcc
sudo apt-get install -y xterm
sudo apt-get install -y git-core
sudo apt-get install -y subversion
sudo apt-get install -y libgl1-mesa-dri
sudo apt-get install -y libgl1-mesa-dev
sudo apt-get install -y libxt-dev
sudo apt-get install -y libosmesa-dev
cd ~/src
wget http://www.vtk.org/files/release/5.10/vtk-5.10.1.tar.gz
tar -xzf vtk-5.10.1.tar.gz 

mkdir  -p  ~/bin/VTK
cd ~/bin/VTK
ccmake ~/src/VTK5.10.1/

make


cd /tmp
wget http://gitorious.org/vtkwikiexamplestarballs/vtkwikiexamplestarballs/blobs/raw/master/ReadOBJ.tar

tar xf ReadOBJ.tar
cd ReadOBJ
cd build
cmake  -DVTK_DIR=/home/pi/bin/VTK   ..
make

wget  http://pages.cs.wisc.edu/~yetkin/smvr/obj/cow.obj
./ReadOBJ  cow.obj



cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.0.0.zip
unzip opencv.zip


wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.0.0.zip
unzip opencv_contrib.zip

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip


# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

source ~/.profile

mkvirtualenv cv
mkvirtualenv cv -p python3

source ~/.profile
workon cv


pip install numpy

workon cv

cd ~/opencv-3.0.0/
mkdir build

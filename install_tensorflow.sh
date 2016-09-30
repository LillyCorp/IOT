sudo apt-get install autoconf automake libtool maven
sudo apt-get install pkg-config zip g++ zlib1g-dev unzip

# For Python 2.7
sudo apt-get install python-pip python-numpy swig python-dev
sudo pip install wheel

# For Python 3.3+
sudo apt-get install python3-pip python3-numpy swig python3-dev
sudo pip3 install wheel

mkdir tf
cd tf
git clone https://github.com/google/protobuf.git
cd protobuf
git checkout d5fb408d
./autogen.sh
./configure --prefix=/usr
make -j 4
sudo make install


cd java
mvn package

cd ../..
git clone https://github.com/bazelbuild/bazel.git

cd bazel
git checkout 0.2.1

sudo cp /usr/bin/protoc third_party/protobuf/protoc-linux-arm32.exe
sudo cp ../protobuf/java/target/protobuf-java-3.0.0-beta-2.jar third_party/protobuf/protobuf-java-3.0.0-beta-1.jar


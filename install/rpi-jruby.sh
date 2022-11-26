apt install default-jdk

cd ~/
wget https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.3.2.0/jruby-dist-9.3.2.0-bin.tar.gz
cd /opt
sudo tar xzvf ~/jruby-dist-9.3.2.0-bin.tar.gz # or ~/Downloads/...
sudo update-alternatives --install /usr/bin/jruby jruby /opt/jruby-9.3.2.0/bin/jruby 100
sudo update-alternatives --install /usr/bin/jgem jgem /opt/jruby-9.3.2.0/bin/jgem 100
sudo update-alternatives --install /usr/bin/jirb jirb /opt/jruby-9.3.2.0/bin/jirb 100

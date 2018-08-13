sudo yum update -y
sudo yum -y install git
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo '# rbenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
sudo yum -y install bzip2 gcc openssl-devel readline-devel zlib-devel mysql-devel
rbenv install -s 2.5.1
rbenv global 2.5.1
gem install bundler

sudo yum -y nginx
sudo service nginx start

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install yarn

# install prerequisite for pyenv
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# create virtual environment
python3 -m venv venv 
source ./venv/bin/activate

# install requirements
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# configure default shell
chsh /bin/zsh

# install github cli
gh_version=0.6.4
gh_platform=linux_amd64

wget https://github.com/cli/cli/releases/download/v${gh_version}/gh_${gh_version}_${gh_platform}.tar.gz
tar -xf gh_${gh_version}_${gh_platform}.tar.gz
sudo cp gh_${gh_version}_${gh_platform}/bin/gh /usr/local/bin/
rm -rf gh_${gh_version}_linux*
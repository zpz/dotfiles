sudo apt-get purge --auto-remove -y \
    vim vim-runtime vim-gnome vim-tiny vim-gui-common vim-common
sudo apt-get autoremove -y

sudo apt-get install -y --no-install-recommends \
    liblua5.1-dev luajit libluajit-5.1 \
    python3-dev \
    libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev

    # ruby-dev libperl-dev 

#Optional: so vim can be uninstalled again via `dpkg -r vim`
sudo apt-get install -y --no-install-recommends checkinstall

sudo rm -rf /usr/local/share/vim /usr/bin/vim

sudo mkdir -p /usr/include/lua5.1/include
sudo cp /usr/include/lua5.1/*.h /usr/include/lua5.1/include

cd ~/tmp
git clone https://github.com/vim/vim
cd vim
git pull && git fetch

#In case Vim was already installed
cd src
make distclean
cd ..

./configure \
    --enable-multibyte \
    --enable-python3interp \
    --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
    --enable-luainterp \
    --with-luajit \
    --with-lua-prefix=/usr/include/lua5.1 \
    --enable-cscope \
    --with-features=huge \
    --with-x \
    --enable-fontset \
    --enable-largefile \
    --disable-netbeans \
    --enable-fail-if-missing

    #--enable-perlinterp=dynamic \
    #--enable-rubyinterp=dynamic \
    #--with-ruby-command=/usr/local/bin/ruby \
    #--enable-pythoninterp=dynamic \
    #--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    #--enable-gui=auto \
    #--with-compiledby="Zepu" \

make && sudo make install


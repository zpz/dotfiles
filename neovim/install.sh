# Run this script w/o `sudo`.

# Where to put neovim config files?
# There is some confusion.
# System-wide, there is /etc/xdg/nvim/ and /usr/local/share/nvim/. 
# User local, there is ~/.local/share/nvim/ and ~/.config/nvim/.
#
# This script installs things locally for the current user.
# Otherwise some trouble-some `sudo` on/off switches are needed in the script.

# If the installed `nvim` is not working properly,
# check the paths in the installed `init.vim` and `plugins.vim` files.
# Also check that the installed `nvim` command is on the system path.
# Another useful thing to check is: launch `nvim`, and type
#  : echo &rtp

# In particular, check and make sure the Python path in `dotfiles/init.vim`
# at the top is correct.


thisfile="$0"
thisdir="$( cd $( dirname ${thisfile} ) && pwd )"

platform=$(uname -s)
if [[ ${platform} != Linux ]] && [[ ${platform} != Darwin ]]; then
    echo "Platform '${platform}' is not supported."
    exit 1
fi

NVIM_HOME=~/.local/share/nvim
NVIM_CFG=~/.config/nvim
if [[ "${platform}" == Linux ]]; then
    NVIM_CMD=~/.local/bin/nvim
fi
NVIM_RPLUGIN_MANIFEST=${NVIM_HOME}/rplugin.vim


if [ -d ${NVIM_HOME} ]; then
    echo "Directory ${NVIM_HOME} exists, suggesting 'neovim' is installed. Please un-install first."
    exit 1
fi

if [ -d ${NVIM_CFG} ]; then
    echo "Directory ${NVIM_CFG} exists, suggesting 'neovim' is installed. Please un-install first."
    exit 1
fi

if [[ $(which nvim) != '' ]]; then
    echo "'nvim' is installed. Please un-install first."
    exit 1
fi


function clean-up {
    rm -rf ${NVIM_HOME} ${NVIM_CFG}
    if [[ "${platform}" == Linux ]]; then
        rm -f ${NVIM_CMD}
    else
        brew uninstall nvim
    fi
}


function check-status {
    status=$?
    if [[ ${status} != 0 ]]; then
        clean-up
        exit ${status}
    fi
}


if [[ "${platform}" == Linux ]]; then
    # NEOVIM_URL=https://github.com/neovim/neovim/releases/download/v0.3.4/nvim-linux64.tar.gz
    # curl -skL --retry 3 ${NEOVIM_URL} | tar xz -C /tmp \
    #     && mkdir -p /usr/local/sbin \
    #     && mv /tmp/nvim-linux64 /usr/local/sbin/neovim \
    #     && ln -s /usr/local/sbin/neovim/bin/nvim /usr/local/bin/nvim

    NEOVIM_URL=https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
    curl -kL --retry 3 ${NEOVIM_URL} -o ${NVIM_CMD} \
        && chmod +x ${NVIM_CMD}
else
    brew install neovim
fi
check-status


mkdir -p ${NVIM_HOME} ${NVIM_CFG} \
    && cp -rf "${thisdir}/dotfiles/"* ${NVIM_HOME}/ \
    && chmod -R +rX ${NVIM_HOME} \
    && mv ${NVIM_HOME}/init.vim ${NVIM_CFG}/ \
    \
    && mkdir -p ${NVIM_HOME}/bundle \
    && git clone --branch 'v0.10.2' --single-branch --depth 1 \
        https://github.com/VundleVim/Vundle.vim.git \
        ${NVIM_HOME}/bundle/Vundle.vim \
    \
    && nvim +PluginInstall +qall \
    && nvim +UpdateRemotePlugins +qall \
    \
    && rm -rf ${NVIM_HOME}/bundle/*/doc \
    && rm -rf ${NVIM_HOME}/bundle/*/test \
    && rm -rf ${NVIM_HOME}/bundle/*/.git \
    && rm -rf ${NVIM_HOME}/bundle/*/.gitignore \
    && rm -rf ${NVIM_HOME}/bundle/*/tests \
    \
    && pip3 install --no-cache-dir --user pynvim jedi
check-status

# apt-get install --no-install-recommends --no-upgrade -y xclip

export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/palemoon


# =================== File Info =====================
#  Author: jessun1990@gmail.com
#  Desc: profile
#  Location: ~/.profile
# ===================================================
case "$(uname)" in
    Linux*)     machine="linux";;
    Darwin*)    machine="mac";;
    CYGWIN*)    machine="cygwin";;
    MINGW*)     machine="mingw";;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ -f "/usr/bin/nvim" ]; then
    export EDITOR="/usr/bin/nvim"
elif [ -f "/usr/bin/vim" ]; then
    export EDITOR="/usr/bin/vim"
fi

if [ "$machine" == "linux" ]; then 
    if [ -x "$(command -v setxkbmap)" ]; then
        setxkbmap -option caps:swapescape
    fi
    if [ -x "$(command -v google-chrome-unstable)" ]; then
        export BROWSER=google-chrome-unstable
    elif [ -x "$(command -v google-chrome-beta)" ]; then
        export BROWSER=google-chrome-beta
    elif [ -x "$(command -v google-chrome-stable)" ]; then
        export BROWSER=google-chrome-stable
    fi

    export LANG=zh_CN.UTF-8
    export GTK_IM_MODULE=ibus
    export QT_IM_MODULE=ibus
    export XMODIFIERS=@im=ibus
    export GLFW_IM_MODULE=ibus
    export LC_ALL=zh_CN.UTF-8
    export LC_CTYPE=
fi

[ -d "$HOME/.cargo/bin" ] && export PATH="$HOME/.cargo/bin:$PATH"
export TERM="xterm-256color"

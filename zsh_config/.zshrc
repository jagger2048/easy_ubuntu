### Added by Zinit's installer
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

### Zinit config start
# 快速目录跳转
zinit ice lucid wait='1'
zinit light skywind3000/z.lua

# 语法高亮
zinit ice lucid wait='0' atinit='zpcompinit'
zinit light zdharma/fast-syntax-highlighting

# 自动建议
zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

# 补全
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions

# 加载 OMZ 框架及部分插件
zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh
zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh

# zinit ice svn
# zinit snippet OMZ::plugins/extract

zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh

# 加载 zsm 默认插件
# Load OMZ Git library
zinit snippet OMZL::git.zsh

# Load Git plugin from OMZ
zinit snippet OMZP::git
zinit cdclear -q # <- forget completions provided up to this moment
setopt promptsubst

# Load SVN plugin from OMZ to ignore "zsh: command not found: svn_prompt_info" error from ys theme
zinit snippet OMZP::svn

# Load theme from OMZ
zinit snippet OMZT::ys

### Zinit config end

###############################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jagger/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jagger/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jagger/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jagger/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# for miniconda3 
export PATH=/home/jagger/miniconda3/bin/:$PATH

# # <<< xtensa xplore <<<

# export XTENSA_SYSTEM_BASE=/home/jagger/xtensa/
# # export XTENSA_VER=RG-2018.11-linux
# export XTENSA_VER=RI-2020.4-linux
# export PATH=/home/jagger/xtensa/${XTENSA_VER}/XtensaTools/bin:$PATH

## xtensa RG11
## export XTENSA_CORE=dmx1aRG11
# export XTENSA_CORE=dmx1aRI04
# export XTENSA_SYSTEM=/home/jagger/${XTENSA_VER}/${XTENSA_CORE}/config 
# # <<< xtensa xplore <<<

## wsl nameserver
# echo "nameserver 8.8.8.8" > /etc/resolv.conf

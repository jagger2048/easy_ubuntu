
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
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

# Load theme from OMZ
zinit snippet OMZT::ys

### Zinit config end

###############################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jagger/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jagger/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jagger/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jagger/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# for anaconda3 
export PATH=/home/jagger/anaconda3/bin/:$PATH

# # <<< xtensa xplore <<<

# export XTENSA_SYSTEM_BASE=/home/jagger/xtensa/
# # export XTENSA_VER=RG-2018.11-linux
# export XTENSA_VER=RI-2020.4-linux
# export PATH=/home/jagger/xtensa/${XTENSA_VER}/XtensaTools/bin:$PATH

# # export XTENSA_CORE=dmx1aRG11 # Knowles
# export XTENSA_CORE=dmx1aRI04
# # Knowles
# export XTENSA_SYSTEM=/home/jagger/${XTENSA_VER}/${XTENSA_CORE}/config # Knowles RG11
# # export /home/jagger/dsp-toolchain/RI04/CoreConfigs/RI-2020.4-linux/dmx1aRI04/config # Knowles RI04
# # <<< xtensa xplore <<<

## wsl nameserver
# echo "nameserver 8.8.8.8" > /etc/resolv.conf



# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mikizhu/.oh-my-zsh"

ZSH_THEME="robbyrussell"


plugins=(git autojump vi-mode fzf zsh-autosuggestions zsh-syntax-highlighting)
export FZF_BASE=/Users/mikizhu/.fzf
export FZF_DEFAULT_COMMAND='fj'
DISABLE_FZF_AUTO_COMPLETION="true"
source $ZSH/oh-my-zsh.sh
bindkey -v

# User configuration

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.iterm2_shell_integration.zsh

alias vim=nvim
ide() {
  tmux new-session -s "ide" -d
  tmux split-window -v -p 20 -c "#{pane_current_path}"
  tmux resize-pane -D 4
  tmux select-pane -t 0
  tmux attach-session -t "ide"
}

# kitty 远程链接ssh会出现问题，使用下面方式
# https://wiki.archlinux.org/title/kitty#Terminal_issues_with_SSH
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

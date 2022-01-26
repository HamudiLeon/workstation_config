#if status is-interactive
    # Commands to run in interactive sessions can go here
#end

## Show All Attached Disks and Partitions
alias show_aliases="cat ~/.config/fish/config.fish|grep alias|sort" 
alias show_descs="diskutil list"
alias reload_fish="source ~/.config/fish/config.fish"
alias edit_fish="vim $HOME/.config/fish/config.fish"
alias ll="exa -l -g --tree --level=2 -a --icons"
alias la="exa -l -g --icons"
alias showcpus="sysctl hw.physicalcpu hw.logicalcpu"
alias showhiddenfolders="defaults write com.apple.finder AppleShowAllFiles -bool TRUE"
alias c="clear"
alias ..="cd .."
alias ...="cd ../../"
alias myip="ipconfig getifaddr en0"
alias myexternalip="curl ipecho.net/plain; echo"
alias gosleep="pmset sleepnow"
alias all_hardware_ports="networksetup -listallhardwareports"
#alias genpass="LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20"
alias du_large_10="du -sk * | sort -nr | head -10"
alias tf=terraform
alias gs="git status"
alias g="git"
alias h history
alias my_git="cd /Users/hamudi/git"
alias mdkir="/bin/mkdir"
export ES_HOME=/usr/local/var/homebrew/linked/elasticsearch
export KIBANA_HOME=/usr/local/var/homebrew/linked/kibana

# workflow alias for git commit and push show status after all
## argv is the commit message
function my_git_push
    git add * -f
    git status
    git commit -a -m $argv
    git push origin
    git push github
    git log --graph
    
end

##up Directory with number up 2, up 3 etc. :) 
function up
  for count in (seq $argv)
    cd ..
  end
end



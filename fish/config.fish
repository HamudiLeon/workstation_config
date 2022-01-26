#if status is-interactive
    # Commands to run in interactive sessions can go here
#end

# LESS with colors
# from http://blog.0x1fff.com/2009/11/linux-tip-color-enabled-pager-less.html
set -x LESS "-RSM~gIsw"
# Flush Directory Service cache
alias flush "dscacheutil -flushcache"
# Empty the Trash
alias emptytrash "rm -rfv ~/.Trash"
# Recursively delete `.DS_Store` files
alias cleanup "find . -name '*.DS_Store' -type f -ls -delete"
# Hide/show all desktop icons (useful when presenting)
alias hidedesktop "defaults write com.apple.finder CreateDesktop -bool false and killall Finder"
alias showdesktop "defaults write com.apple.finder CreateDesktop -bool true and killall Finder"

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
alias g git
alias ga "git add"
alias gb "git branch"
alias gba "git branch -a"
alias gbd "git branch -D"
alias gca "git commit -a -m"
alias gcm "git commit -m"
alias gco "git checkout"
alias gcob "git checkout -b"
alias gcp "git cherry-pick"
alias gd "git diff"
alias gdc "git diff --cached"
alias gl "git lg"
alias gm "git merge --no-ff"
alias gp "git push"
alias gpom "git pull origin master"
alias gpt "git push --tags"
alias grh "git reset --hard"
alias grs "git reset --soft"
alias gst "git status -sb --ignore-submodules"
alias undopush "git push -f origin HEAD^:master"

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



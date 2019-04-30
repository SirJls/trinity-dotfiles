alias ll="ls -l --group-directories-first"
alias ls="ls -h --color"       # add colors for filetype recognition
alias la="ls -A"               # show hidden files
alias lx="ls -xb"              # sort by extension
alias lk="ls -lSr"             # sort by size, biggest last
alias lc="ls -ltcr"            # sort by and show change time, most recent last
alias lu="ls -ltur"            # sort by and show access time, most recent last
alias lt="ls -ltr"             # sort by date, most recent last
alias lm="ls -Al |more"        # pipe through 'more'
alias lr="ls -lR"              # recursive ls
alias lsr="tree -Csu"          # nice alternative to 'recursive ls'

alias pacman='sudo pacman --color always'
alias pac='pacman --color always'
alias pacs='sudo pacman -S'
alias pacss='pacman -Ss'
alias pacsi='pacman -Si'
alias pacssi='pacman -Ssi'
alias pacqs='pacman -Qs'
alias pacqi='pacman -Qi'
alias pacqsi='pacman -Qsi'
alias pacqssi='pacman -Qssi'
alias pacup="sudo pacman -Syu"
alias pacremove="sudo pacman -Rns"
alias orphans="pacman -Qtdq"
alias pacr='sudo pacman -Rscudn'
alias upmirrors='sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup; sudo reflector -l 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias pacc="sudo paccache -r"
alias pacca="sudo paccache -ruk0"

alias irc="weechat"
alias mutt="neomutt"

alias grep="grep --color=auto"
alias ls="ls --color=auto"

alias pong="ping -c 3 google.com"
alias wifi="connmanctl"
alias exip="curl http://ipecho.net/plain; echo"

alias rm='rm -iv'

alias vi="vim"
alias v="vim"

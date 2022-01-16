function joshuto() {
	ID="$$"
	CWD_FILE="/tmp/$USER/joshuto-cwd-$ID"
	env joshuto --last-dir "$CWD_FILE" $@

	if [ -e "$CWD_FILE" ]; then
		JOSHUTO_CWD=$(cat "$CWD_FILE")
		rm "$CWD_FILE"
		cd "$JOSHUTO_CWD"
	fi
}

## Rust alternatives
alias grep='rg'
alias bbat='bat --paging never --style numbers'

## git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias gs='git status'

## udisks
alias mount='udisksctl mount -b'
alias umount='udisksctl unmount -b'
alias unlock='udisksctl unlock -b'

alias dfc='dfc -d'

alias lss='ls --color=always'
alias ls='exa'
alias ll='exa -l'
alias la='exa -a'
alias l1='exa -1'

alias poweroff='poweroff.sh'
alias reboot='reboot.sh'

alias swaylock='swaylock --color 000000'

alias ddate="date '+%Y-%m-%d'"
alias rsync_date='rsync --dry-run -v'

## Verbose output

alias cp='cp -v'
alias dc='cd'
alias mv='mv -v'
alias rm='rm -v'

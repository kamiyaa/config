function joshuto() {
	ID="$$"
	OUTPUT_FILE="/tmp/$USER/joshuto-cwd-$ID"
	env joshuto --output-file "$OUTPUT_FILE" $@
	exit_code=$?

	case "$exit_code" in
		# regular exit
		0)
			;;
		# output contains current directory
		101)
			JOSHUTO_CWD=$(cat "$OUTPUT_FILE")
			cd "$JOSHUTO_CWD"
			rm "$OUTPUT_FILE"
			;;
		# output selected files
		102)
			cat "$OUTPUT_FILE"
			rm "$OUTPUT_FILE"
			;;
		*)
			echo "Exit code: $exit_code"
			;;
	esac
}

alias oyasumi='systemctl suspend'

alias pretty='npx prettier "frontend/**/*.{tsx,ts}" "backend/**/*.ts" "lib/**/*.ts" --write'

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

alias dfc='dfc -d'

alias lss='ls --color=always'
alias ls='exa'
alias ll='exa -l'
alias la='exa -a'
alias l1='exa -1'

alias po='tofi_poweroff.sh'
alias poweroff='tofi_poweroff.sh'
alias reboot='tofi_reboot.sh'

alias swaylock='swaylock --color 000000'

alias ddate="date '+%Y-%m-%d'"
alias rsync_date='rsync --dry-run -v'

## udisks
alias mount='udisksctl mount -b'
alias unlock='udisksctl unlock -b'

## Verbose output

alias cp='cp -v'
alias dc='cd'
alias mv='mv -v'
alias rm='rm -v'


SHELL=bash

INCLUDE_FILES=( \
	"$HOME/.config/$SHELL/dirs.sh" \
	"$HOME/.config/$SHELL/alias.sh" \
	"$HOME/.config/$SHELL/exports.sh" \
)

for FILE in ${INCLUDE_FILES[@]}; do
	if [ -f "$FILE" ]; then
		source "$FILE"
	fi
done

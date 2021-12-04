
dirs=( \
	"/tmp/$USER" \
	"/tmp/$USER/backups" \
	"/tmp/$USER/buffers" \
	"/tmp/$USER/cache" \
)

for DIR in ${dirs[@]}; do
	if [ ! -d "$DIR" ]; then
		mkdir -p "$DIR"
	fi
done

if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi

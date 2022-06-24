#!/usr/bin/env bash

if [ -n "$DISPLAY" ]; then
    export joshuto_wrap_id="$$"
    export joshuto_wrap_tmp="$(mktemp -d -t joshuto-wrap-$joshuto_wrap_id-XXXXXX)"
    export joshuto_wrap_ueber_fifo="$joshuto_wrap_tmp/fifo"
    export joshuto_wrap_pid_file="$joshuto_wrap_tmp/pid"
    export joshuto_wrap_preview_meta="$joshuto_wrap_tmp/preview-meta"
    export joshuto_wrap_ueber_identifier="preview"

    function show_image {
	kitty +kitten icat --transfer-mode file --place "$4x$5@$2x$3" "$1"
    }

    function remove_image {
	kitty +kitten icat --clear
    }

    function get_preview_meta_file {
        echo "$joshuto_wrap_preview_meta/$(echo "$1" | md5sum | sed 's/ //g')"
    }

    export -f get_preview_meta_file
    export -f show_image
    export -f remove_image
fi

joshuto "$@"
exit $?

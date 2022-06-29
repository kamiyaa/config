export EDITOR=micro

export LIBVA_DRIVER_NAME=radeonsi

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus

## GTK related stuff
# export GDK_BACKEND=wayland or x11
# export XCURSOR_THEME=deepin
# export XCURSOR_SIZE=24
export GDK_SCALE=1.3
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1
export ANDROID_HOME="$HOME/Android"

# Sway
# Fix nouveau on sway
# export WLR_DRM_NO_MODIFIERS=1
# export WLR_RENDERER=vulkan
export LIBSEAT_BACKEND=logind

export TMP_DIR='/tmp'
export JOSHUTO_CONFIG_HOME="$HOME/.config/joshuto"

## Misc

export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig
export GPG_TTY=$(tty)

## XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CURRENT_DESKTOP=sway

## QT related stuff
export QT_QPA_PLATFORMTHEME=qt5ct
# export QT_QPA_PLATFORM=wayland-egl
# export SDL_VIDEODRIVER=wayland
# export QT_AUTO_SCREEN_SCALE_FACTOR=true
# export QT_DEVICE_PIXEL_RATIO=1

export FZF_DEFAULT_COMMAND='rg --files -i'
export SKIM_DEFAULT_COMMAND='rg --files -i'

# bat config
export BAT_CONFIG_PATH="$XDG_CONFIG_HOME/bat/bat.conf"


## Local paths
export PATH="$HOME/.bin:$HOME/.local/bin:$PATH"

## Solana
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
## Terra Station
export PATH="$HOME/.local/opt/Terra Station/:$PATH"

## Golang
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"
## Rust
export RUST_DIR="$HOME/.cargo"
export PATH="$RUST_DIR/bin:$PATH"
## pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

## fnm
export PATH=/home/kamiyaa/.fnm:$PATH
eval "$(fnm env)"
# export NODE_OPTIONS=""

## Yarn
export YARN_DIR="$HOME/.yarn"
export PATH="$YARN_DIR/bin:$PATH"
## Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
## Wasmer
export WASMER_DIR="$HOME/.wasmer"
export WASMER_CACHE_DIR="$WASMER_DIR/cache"
export PATH="${WASMER_DIR}/bin:$WASMER_DIR/globals/wapm_packages/.bin:${PATH}"
## Haskell
export CABAL_DIR="$HOME/.cabal"
export GHCUP_DIR="$HOME/.ghcup"
export PATH="${CABAL_DIR}/bin:${PATH}"
export PATH="${GHCUP_DIR}/bin:${PATH}"
## DrRacket
export RACKET_DIR="$HOME/.local/bin/racket"
export PATH="${RACKET_DIR}/bin:${PATH}"

## aws
export AWS_DIR="$HOME/.local/v2/2.4.18"
export PATH="${AWS_DIR}/bin:${PATH}"
export AWS_PROFILE="dev"

#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PATH="/usr/local/bin:$PATH:/usr/sbin"

open_NeteaseMusic() {
  $(open -a NeteaseMusic)
}

toggle_play_pause() {
  local msg=$(osascript "$CURRENT_DIR/../apple_scripts/playpause.applescript")
}

previous_track() {
  local msg=$(osascript "$CURRENT_DIR/../apple_scripts/prev.applescript")
}

next_track() {
  local msg=$(osascript "$CURRENT_DIR/../apple_scripts/next.applescript")
}

likedislike_track() {
  local msg=$(osascript "$CURRENT_DIR/../apple_scripts/likedislike.applescript")
}

show_menu() {
  $(tmux display-menu -T "#[align=centre fg=green]NeteaseMusic" -x R -y P \
    "" \
    "" \
    "Open NeteaseMusic"     o "run -b 'source \"$CURRENT_DIR/NeteaseMusic.sh\" && open_NeteaseMusic'" \
    "Play/Pause"       p "run -b 'source \"$CURRENT_DIR/NeteaseMusic.sh\" && toggle_play_pause'" \
    "Previous"         b "run -b 'source \"$CURRENT_DIR/NeteaseMusic.sh\" && previous_track'" \
    "Next"             n "run -b 'source \"$CURRENT_DIR/NeteaseMusic.sh\" && next_track'" \
    "Like/Dislike"     l "run -b 'source \"$CURRENT_DIR/NeteaseMusic.sh\" && likedislike_track'" \
    "" \
    "Close menu"       q "" \
  )
}

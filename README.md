# NeteaseMusic plugin for tmux
[![GitHub](https://img.shields.io/github/license/PLDaily/tmux-NeteaseMusic)](https://opensource.org/licenses/MIT)

Show a nice menu to manage NeteaseMusic application.

<p align="left">
  <img src="https://github.com/PLDaily/tmux-NeteaseMusic/raw/main/assets/tmux-NeteaseMusic.gif" alt="tmux-NeteaseMusic"  width=400 height=530>
</p>

## Installation
### Requirements
* macOS
* tmux >= 3.0

### With Tmux Plugin Manager
Add the plugin in `.tmux.conf`:
```
set -g @plugin 'PLDaily/tmux-NeteaseMusic'
```
Press `prefix + I` to fetch the plugin and source it. Done.

### Manual
Clone the repo somewhere. Add `run-shell` in the end of `.tmux.conf`:

```
run-shell PATH_TO_REPO/tmux-NeteaseMusic.tmux
```
NOTE: this line should be placed after `set-option -g status-right ...`.

Press `prefix + :` and type `source-file ~/.tmux.conf`. Done.

## Usage
Press tmux `prefix + m` (for example, `C-b m`) and you will see a nice menu:

<p align="left">
  <img src="https://github.com/PLDaily/tmux-NeteaseMusic/raw/main/assets/NeteaseMusic-menu.png" alt="tmux-NeteaseMusic"  width=230 height=220>
</p>

```
* Open NeteaseMusic   (o) - open/launch NeteaseMusic
* Play/Pause          (p) - toggle play/pause
* Previous            (b) - play the current track from the beggining or play the previous track
* Next                (n) - play the next track
* Like/Dislike        (l) - toggle play/pause
* Close menu          (q) - close menu
```

## Credits
Many thanks to authors of [tmux-spotify](https://github.com/xamut/tmux-spotify) and [applescript-player-control](https://github.com/yantze/applescript-player-control) for inspiration!

## FAQ
Q: Not authorized to send Apple events to System Events ?

A: Goto Settings -> Security & Privacy -> Privacy -> Automation -> Privacy tab and check the System Events checkbox

## License
tmux-NeteaseMusic plugin is released under the [MIT License](https://opensource.org/licenses/MIT).

# Tmux - Customization

[tmux - Introduction](https://github.com/tmux/tmux)

[tmux - Installation](https://github.com/tmux/tmux/wiki/Installing)



## Standalone Usage

Assume the absolute location is `/path/to/.tmux.conf`, the most simple way to enable the customization is:

```shell
$ tmux -f /path/to/.tmux.conf
```

Besides, since tmux looks for user config file `$HOME/.tmux.conf`, a symbolic link works, too:

```shell
$ link -s /path/to/.tmux.conf $HOME/.tmux.conf
```

If you prefer to alias, then append this to `.bashrc` or `.zshrc`:

```shell
alias tmux="tmux -f /path/to/.tmux.conf"
```



## Shell Integration

Assume the shell script is `/path/to/.shellrc.tmux`, add this line to your profile script:

```shell
source /path/to/.shellrc.tmux
```

In a terminal, you can

- `tnew [session-name]`: Equal to `tmux new` or `tmux new -t`. Create a tmux session with optional session name
- `tls`: Equal to `tmux list-session`
- `tich [session-id]`: Equal to `tmux attach` or `tmux attach -t`. It means *tmux-which*, the most recent or the optionally specified one.
- `trename <session-id>`: Equal to `tmux rename -session -t`
- `tkill <session-id>`: Equal to `tmux kill-session -t`
- `tdrop`: Equal to `tmux kill-server`



## True Color

I seldom use any color themes but only the default one from GNOME terminal. To enable 256 true color in tmux, append these lines to the `.tmux.conf`:

```shell
# Set 256 colors
set -g default-terminal "xxxx-256color"
```

Note that the `xxxx` can be replaced with `xterm`/`screen`/`tmux`, try any of them if the others are invalid in your case.

If you use zsh-autosuggestion plugin, like me, after this customization, the dark and light indicator for suggestion should work normally.

| Before                                                       | After                                                        |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="./imgs/image-none-256color.png" alt="image-20210731153130817" style="zoom:35%;" /> | <img src="./imgs/image-256color.png" alt="image-20210731152739608" style="zoom:35%;" /> |

If you are a vim enthusiast, you may quickly find that the color in vim is still odd. Try this to bring color back:

```vimrc
" Keep color as normal in a terminal multiplexer(i.e. tmux) as outsides
set background=dark
set t_Co=256
```



## Keybindings

| Function | Key Sequence         |
| -------- | -------------------- |
| Prefix   | C-j (default is C-b) |

Related to Panel

| Function                                       | Key Sequence |
| ---------------------------------------------- | ------------ |
| Split horizontally                             | <prefix> %   |
| Split vertically                               | <prefix> "   |
| Close pane                                    | <prefix> x   |
| Switch to the next pane                       | <prefix> o   |
| Move all pane forward                         | <prefix> C-o |
| Move all pane backward                        | <prefix> M-o |
| Toggle current pane fullscreen on/off         | <prefix> z   |
| Make current pane shown in a separated window | <prefix> !   |

Related to Window

| Function            | Key Sequence |
| ------------------- | ------------ |
| Create a new window | <prefix> c   |
| List all windows    | <prefix> w   |



## Activate Tmux Conf

Inside tmux, any modification to conf won't take effect until you source it.

```shell
$ tmux source-file /path/to/.tmux.conf
```



## Reference

[Vim color scheme changes in tmux #699](https://github.com/tmux/tmux/issues/699)

[A simple introduction, in Chinese](https://www.ruanyifeng.com/blog/2019/10/tmux.html)

[oh my tmux](https://github.com/gpakosz/.tmux)


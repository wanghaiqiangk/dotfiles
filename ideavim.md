# IdeaVim

If you are a vimer and somehow is using Jetbrains IDEs...(you may not a pure vimer lol), you definitely know ideavim, which is a vim emulation plugin for Jetbrains family.

With ideavim, you can perform most of similar operations that vim offers. In this way, you can not only quickly adapt yourself to Jetbrain IDEs, but also easily enjoy those specialized and powerful features provided by IDEs.

Some people may think that vim itself is enough to be a IDE-like editor with numerous plugins for choice. That's true and I will never forbid anyone from doing that. However, I think it's an easy way to start focusing on your coding with minimal efforts by combining vim and IDE.

See more on their official site hosted on [Github - ideavim](https://github.com/JetBrains/ideavim).

Note: ideavim is still under development and it's recommended to keep it to latest version.

# Let's Start

1. Install IdeaVim plugin in Pycharm.
2. Enable IdeaVim, which is default after installation, but can also be done via `Alt + Shift + v`.
3. Copy the vim-like source file `.ideavimrc` to `$HOME`.

```shell
$ ln -sf $PWD/.ideavimrc $HOME/.ideavimrc
```

| Functions        | Shortcuts          |
| ---------------- | ------------------ |
| Enable IdeaVim   | `Alt + Shift + V`  |
| Reload IdeaVimRc | `Ctrl + Shift + O` |

# Keybindings

## Leader Key

```
let mapleader = <your preferred leader key>
```

For me, the leader key is set to `SPC` since the default `\` is much smaller in my physical keyboard and thus hard to precisely press on it.

## Actions

Before binding key sequences to some functionalities provided by Pycharm, you need to know action-ids to refer to them.

`:actionlist [name or keys]` will list all supported actions by ideavim along with their existing shortcuts. However, you probably cannot recognize their true usages from those esoteric names caused by historical reasons. And ideavim provides another more attractive way to track any action you perform on Pycharm GUI and tell you what the action-id is: `[Double Shift] >> track action id >> ON`.

## Map Key to Action

In the source file, you must follow the syntax:

```
map key-seq <Action>(action-id)...
```

where,

- key-seq
- action-id

are placeholders where you should write on you own.

## Frequently Used

You really should customize keybindings based on your preference. I will list some of them which are frequently used on my daily working.

| Key Seq   | Action ID                      | Desc                            |
| --------- | ------------------------------ | ------------------------------- |
| [[        | MethodUp                       |                                 |
| ]]        | MethodDown                     |                                 |
| <leader>b | Switcher                       | Switch tabs                     |
| <leader>f | GotoFile                       | Quick open files                |
| <leader>. | QuickJavaDoc                   | View doc under cursor           |
| <leader>? | ShowErrorDescription           | View error message under cursor |
| <leader>i | RenameElement                  | Rename the word under cursor    |
| <leader>g | EditorSelectWord -> FindInPath |                                 |

# Plugins

IdeaVim emulates some plugins commonly used by Vim.

Here, I enable

- `packadd! matchit`
- `Plug 'tpope/vim-surround'`
- `Plug 'tpope/vim-commentary'`
- `Plug 'michaeljsmith/vim-indent-object'`

# Oh My Zsh

[ohmyzsh - Introdution](https://github.com/ohmyzsh/ohmyzsh)



## Plugins

### Fish-like Command Line Suggestion

[autosuggestions - Introduction](https://github.com/zsh-users/zsh-autosuggestions)

[autosuggestions - Installation](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)



## Theme

I prefer `bira`, whose preview is given below

```shell
╭─username@hostname /full/pathname <git-branch> <rvm-version> <venv>
╰─$ type your command...
```

> Some themes, including `bira`, show ruby version in prompt. If that is not your preference, you can custom and remove it.
>
> My solution is
>
> 1. Copy `bira`'s theme file (`~/.oh-my-zsh/themes/bira.zsh-theme`) to `~/.oh-my-zsh/custom/themes/bira.zsh-theme`
> 2. Remove lines or portions identified by keywords `RVM` or `ruby`
> 3. Source `.zshrc` script
>
> Oh My Zsh probably reads customized theme file with the same name and overrides default options.


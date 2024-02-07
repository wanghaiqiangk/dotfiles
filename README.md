# Dotfiles

# Prerequisites

- [Cargo](https://doc.rust-lang.org/cargo/getting-started/installation.html), the Rust package manager
- [Tuckr](https://github.com/RaphGL/Tuckr).

# Get Started

Clone this repo into `.dotfiles`.

```shell
git clone https://github.com/wanghaiqiangk/dotfiles.git .dotfiles
```

```shell
tuckr add \*
tuckr status  # to verify all of dotfiles are correctly managed
echo '[ -f ~/.mybashrc ] && source ~/.mybashrc' >> ~/.bashrc
```

More details are included in separated pages. Check below:

- [mybashrc](./mybashrc.md)
- [tmux](./tmux.md)
- [ohmyzsh](./oh-my-zsh.md)
- [ideavim](./ideavim.md)


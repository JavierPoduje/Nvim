# Description

My NeoVim configuration for software development.

## Dependencies

1. [Node (>= 12)](https://nodejs.org/en/download/)
2. [Yarn](https://classic.yarnpkg.com/en/docs/install/#debian-stable)
3. [Lazygit](https://github.com/jesseduffield/lazygit)
4. [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
5. [Vim-Plug](https://github.com/junegunn/vim-plug)

## Install

Create folder to handle sessions:

```sh
$ mkdir session/
```

Create folder to handle undos:

```sh
$ mkdir undodir/
```

Install pluggins running the following command inside vim:

```sh
:PlugInstall
```

Check for health problems with the following command and solve them if necessary:

```sh
:checkhealth
```

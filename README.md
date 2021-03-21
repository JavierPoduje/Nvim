# Configuración para Neovim

Para instalar hay que crear la carpeta .config/nvim/, y dentro agregar este repo.

## Pasos para instalar

1. Dentro del `root` del proyecto, crear las carpetas `session` para el manejo de sesiones desde startify y `undodir` para el manejor del árbol de 'undos'.

```sh
$ mkdir session/
$ mkdir undodir/
```

2. Instalar vim-plug desde [aquí](https://github.com/junegunn/vim-plug).
3. Ingresar al archivo `init.vim` e instalar los pluggins

```sh
:PlugInstall
```
4. Check for problems using `:checkhealth`

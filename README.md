# yesod-routes.vim

Vim plugin for syntax-highlighting of [Yesod](http://www.yesodweb.com/) routes files (`config/routes`).

## Installation

Compatible with `Vundle`, `Pathogen`, `Vim-plug`.

## Yesod Routes Highlighting

Open `config/routes` or `*.yesodroutes`. If you are using a `routes` file in a different location:

```vim
:set filetype=yesod
```

in `vim` will set the proper syntax highlighting.

## Persistent Models File Highlighting

`config/models`, `config/models/*` and `*.persistentmodels` files are highlighted under the file type `persistent`.

## Note

Adapted and stripped down from [yesod.vim](https://github.com/alx741/yesod.vim).

vs
==

Vim Script in command line!

ビムスクリプトをコマンドラインで実行するためのシェルスクリプトとバッチファイルです．


## Usage

こんな感じ．

- ソース(src.vim)

```VimL
echo 'argc:' argc()
echo 'argv:' argv()
echo 'Hello World!'
```

- 実行

```sh
$ vs src.vim
argc: 1
argv: ['src.vim']
Hello World!
$ vs src.vim apple banana cake
4 個のファイルが編集を控えています
argc: 4
argv: ['src.vim', 'apple', 'banana', 'cake']
Hello World!
```


## TODO

コマンドライン引数を指定したときのメッセージをどうにかしたい．


## License

こんなものにライセンスもクソもねえ！ご自由にお使いください．

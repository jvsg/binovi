# binovi

Binovi lets you open the code that you see in text editor – in the remote repository viewer.

## How to use

Assuming you are in the git enabled directory that has a remote repository (say, on github) and you'd like to open the selected nugget (or just a single line) of code in the github code viewer, then Binovi helps you in the following way:

1. In visual mode, select one of more lines of text.
2. Do `:Bnv`
3. If things go right, you should be be able to see your browser popping up with the remote code viewer.

## Installation

If you are using `Vundle` to manage your vim plugins, put this in your vimrc

```
Plugin 'jvsg/binovi'
```

## Known issues

1. Binovi does not work on MacOS. Not my fault! The `open` cmdline tool does not recognize `#` in URLs.
2. Only github supported for now. Adding support for other hosts should not be tough.

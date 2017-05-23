## [md2el](https://github.com/0x7c48/md2el) :: markdown -> emacs lisp
md2el program to parse markdown files and extract emacs lisp code from it.

**Table of Contents**

- [md2el](https://github.com/0x7c48/md2el)
- [Why?](#why)
- [Features](#features)
- [Req](#req)
- [Install](#install)
- [Usage](#usage)


## Why?
Who use [Emacs lisp](https://www.gnu.org/software/emacs/) has a lot of configs =)
and some time after you forget some things from it.

Write commment for all pice of this code not good idea.
That why I write code like simple markdown file with detailed descriptions,
and after generate my emacs (*.el) files.


## Features
+ Find files by exceptions
+ Parse files and exctract code from it


## Requirement
+ [The Haskell Tool Stack](https://github.com/commercialhaskell/stack)

    - MacOsX

    ```bash
    brew install haskell-stack
    cd md2el/
    stack setup
    make build
    ```


## Install

```bash
cd md2el/
stack setup
make build
```


## Usage

Program execute file:

```dist/x86_64-osx/md2el```


Program args:

```bash
md2el --from-path  --to-path --file-ext --code-lang --emacs-users-dirs-names
```

Description:

+ --help - help info
+ --from-path /path/ - path to search file in deep, by default - current dir
+ --to-path /path/ - destinations
+ --file-ext - search files with extentions, by default - `.md`
+ --code-lang, by default - `emacs lisp`
+ --emacs-users-dirs-name user1 user2 user[n] - create dirs structure for users for [emacs-stallman](https://github.com/0x7c48/emacs-stallman/)
  
  
Add Haskell optimization:

```bash
md2el +RTS -H128m -K128m -A128m -N -RTS <args>
```
  
  
All to together:

```bash
md2el +RTS -H128m -K128m -A128m -N -RTS --from-path /home/md/  --to-path /home/el/ --file-ext .md --code-lang emacs lisp
```


(c) 2017 [0x7c48](https://github.com/0x7c48)

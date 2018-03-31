ghci:
	stack exec ghci src/Main.hs

copy:
	sudo cp .stack-work/dist/x86_64-linux/Cabal-2.0.1.0/build/md2el/md2el /usr/local/bin/md2el

build:
	stack build

test-args2:
	./.stack-work/install/x86_64-osx/lts-8.9/8.0.2/bin/md2el +RTS -H128m -K128m -A128m -N -RTS --from-path /Users/0x7c4/Dropbox/src/github/sources/emacs/emacs-stallman/src/ --to-path /Users/0x7c4/Dropbox/src/github/sources/emacs/emacs-stallman/dist/.emacs.d/ --file-ext .md

test-no-args:
	./.stack-work/install/x86_64-osx/lts-8.9/8.0.2/bin/md2el +RTS -H128m -K128m -A128m -N -RTS

test--emacs-users-dirs-names:
	./.stack-work/install/x86_64-osx/lts-8.9/8.0.2/bin/md2el --to-path /Users/0x7c4/Dropbox/src/github/sources/emacs/emacs-stallman/dist/.emacs.d/ --emacs-users-dirs-names 0x7c4 vice-versa vlad

test--from-path:
	./.stack-work/install/x86_64-osx/lts-8.9/8.0.2/bin/md2el --from-path /Users/0x7c4/Dropbox/src/github/sources/emacs/emacs-stallman/src/ --to-path /Users/0x7c4/Dropbox/src/github/sources/emacs/emacs-stallman/dist/.emacs.d/

test-build-dirs-and-init: 
	time (make test--emacs-users-dirs-names && make test--from-path)

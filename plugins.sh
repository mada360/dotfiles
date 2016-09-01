#!/bin/bash

./makesymlink.sh
#!/bin/sh

case "$(uname -s)" in

    Darwin)
    echo 'Mac OS X'
	;;

	Linux)
	echo 'Linux'
	sudo apt-get install git && git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim
     ;;

	CYGWIN*|MINGW32*|MSYS*)
	echo 'MS Windows'
	git clone https://github.com/VundleVim/Vundle.vim.git ~/dotfiles/vim/bundle/Vundle.vim
 
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'other OS' 
     ;;
esac


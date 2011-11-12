install:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd` ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	git submodule update --init
	cd bundle/snipmate-snippets; rake deploy_local

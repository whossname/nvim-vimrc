" general
runtime ./plugins.vimrc     " plugins
runtime ./general.vimrc     " general
runtime ./assistance.vimrc  " assistance
runtime ./remaps.vimrc      " remaps

" language specific
au FileType java       runtime ./ftplugin/java.vim         " java
au FileType javascript runtime ./ftplugin/javascript.vim   " javascript
au FileType ruby       runtime ./ftplugin/ruby.vim         " ruby


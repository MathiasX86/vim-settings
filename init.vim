let g:spacevim_filemanager = 'nerdtree'

let g:loaded_python3_provider = 0

call SpaceVim#layers#load('tools#dash');

autocmd FileType python setlocal omnifunc=jedi#completions

let g:jedi#completions_enabled = 1

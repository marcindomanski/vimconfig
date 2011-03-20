set nocompatible
set encoding=utf-8

syntax on
set et
set sw=2
set number
set smarttab
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F2>
set splitbelow

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,*.zip,*.gz,*.bz,*.tar,*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov

"custom shortcuts
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <S-e> :tabnew<CR>:e .<CR>

" make the tab key work better
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

nmap <S-r> :w\|rubyf %<CR>

" pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

" status line
set laststatus=2
set statusline=%t\ %{fugitive#statusline()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Trailing whitespace remove on save
autocmd BufWritePre *.rb,*.py,*.c,*.h,*.feature,*.conf,*rc,README,CHANGELOG,README.* :%s/\s\+$//e

" syntastic config
let g:syntastic_enable_signs=0

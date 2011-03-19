" pathogen comes first
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
syntax on
filetype plugin indent on
set et
set sw=2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType ruby,eruby,yaml,javascript set ai sw=2 sts=2 et
set number
set smarttab
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F2>

map <C-h> :tabprevious<CR> 
map <C-l> :tabnext<CR> 
map <S-l> :tabnew<CR>:e .<CR> 

set laststatus=2 
set statusline=%t\ %{fugitive#statusline()}

" make the tab key work better
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

nmap <S-r> :w\|rubyf %<CR>

" Trailing whitespace remove on save
autocmd BufWritePre *.rb,*.py,*.c,*.h,*.feature,*.conf,*rc,README,CHANGELOG,README.* :%s/\s\+$//e

" specky key bindings
let g:speckyRunSpecCmd = "bundle exec rspec -r ~/.vim/ruby/specky_formatter.rb -f SpeckyFormatter"

let g:speckyBannerKey        = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey       = "<C-S>r"
let g:speckySpecSwitcherKey  = "<C-S>x"
let g:speckyRunSpecKey       = "<C-S>s"
let g:speckyRunRdocCmd       = "fri -L -f plain"
let g:speckyWindowType       = 2

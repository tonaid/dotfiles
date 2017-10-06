set tabstop=4
set list listchars=tab:->,trail:.,extends:>
set shiftwidth=4
set expandtab
set number
set relativenumber
colo torte
syntax on
set statusline+=%F
hi Normal guibg=NONE ctermbg=NONE
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/
nnoremap zz :update<cr>
set wildmode=longest,list,full
set wildmenu

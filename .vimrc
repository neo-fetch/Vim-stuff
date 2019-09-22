"------------------------ vundle BEGIN --------------
set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'ervandew/supertab'
	Bundle 'altercation/vim-colors-solarized'
	Plugin 'fweep/vim-tabber.git'
	Plugin 'rhysd/vim-clang-format'
	Plugin 'kana/vim-operator-user'
	Plugin 'https://github.com/antoyo/vim-licenses'
call vundle#end()            " required
filetype plugin indent on    " required
 
" reloading vimrc: :so %
 
"let g:loaded_youcompleteme = 1
"let g:ycm_global_ycm_extra_conf ='.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_min_num_of_chars_for_completion = 3
"let g:ycm_min_num_identifier_candidate_chars = 5
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = '..'
"let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_seed_identifiers_with_syntax = 1
 
" -------- ??? -------
"let g:ycm_filetype_whitelist = { 'c': 1, 'cpp': 1 }
 
set tags+=./.tags
 
"----------------------
 
" move between tabs
 nnoremap <A-Left>  :tabprevious<CR>
 nnoremap <A-Right> :tabnext<CR>
 "
" CUDA awareness
au BufNewFile,BufRead *.cu,*.cuh set ft=cuda
 
" prevent mouse vanishing
set nomousehide
set mousemodel=popup
 
" toggles menu in graphical mode
function! ToggleGUICruft()
	if &guioptions=='ir'
 		exec('set guioptions=imrLn')
	else
		exec('set guioptions=ir')
	endif
endfunction
 
map <F12> <Esc>:call ToggleGUICruft()<cr>
 
colorscheme solarized
let g:solarized_contrast='high'
let g:solarized_visibility='high'
let g:solarized_hitrail=1
 
set tabline=%!tabber#TabLine()
let g:tabber_filename_style = 'filename'    " README.md\
let g:tabber_divider_style = 'compatible'
 
if has('gui_running')
	set background=light
	set guioptions=i
	set guifont=Inconsolata\ Medium\ 10
	set guioptions-=e
	set lines=999 columns=999
endif		
 
let g:email = "steven@vargaconsulting.ca"
let g:user = "Steven Varga"
let g:license = "propriety"
 
set tabstop=4
set shiftwidth=4
set number
set linebreak
set nobackup
set noswapfile
"set shortmess+=I
set backspace=indent,eol,start
set visualbell t_vb=
set showmode
"set smartcase
 
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>
 
runtime! ftplugin/man.vim
nnoremap K :Man <cword>
 
noremap <C-S> :update<CR><CR>
vnoremap <C-S> <C-C>:update<CR><CR>
inoremap <C-S> <C-O>:update<CR><CR>
 
 
autocmd FileType cuda set ft=c
 
" -----
set smartindent
set tabstop=4
"set shiftwidth=4
"set expandtab
 
set mouse=a
set nu
 
:map <C-a> GVgg
:map <C-n> :enew <Enter>
:map <C-o> :browse tabe <Enter>
:map <C-s> :w <Enter>
:map <C-c> y
:map <C-v> p
:map <C-x> d
:map <C-z> u
:map <C-t> :tabnew <Enter>
:map <C-i> >>
:map <C-w> :close <Enter>
:map <C-W> :q! <Enter>
:map <C-f> /
:map <F3> n
:map <C-h> :%s/
:map <S-t> vat
:map <S-T> vit
:map <S-{> vi{
:map <S-(> vi(
:map <S-[> vi[
:map <C-f> :NERDTreeTabsOpen <Enter>
:map <A-a> :NERDTreeFocusToggle <Enter>
 
let g:clang_format#code_style="webkit"
 
:set spell spelllang=en_us
:set clipboard=unnamed 
 
set backspace=indent,eol,start " allow backspacing over everything in insert mode
 
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
 
 
"spell checking
" Spell check on
set spell spelllang=en_us,hu
setlocal spell spelllang=en_us,hu
 
" Toggle spelling with the F7 key
nn <F7> :setlocal spell! spelllang=en_us<CR>
imap <F7> <C-o>:setlocal spell! spelllang=en_us<CR>
 
nn <F8> :setlocal spell! spelllang=hu<CR>
imap <F8> <C-o>:setlocal spell! spelllang=hu<CR>
 
 
 
" Spelling
"highlight clear SpellBad
"highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
"highlight clear SpellCap
"highlight SpellCap term=underline cterm=underline
"highlight clear SpellRare
"highlight SpellRare term=underline cterm=underline
"highlight clear SpellLocal
"highlight SpellLocal term=underline cterm=underline
 
" where it should get the dictionary files
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
 
"  LICENCE SETTINGS
let g:licenses_authors_name = 'your, name <you@company.ca>'
let g:licenses_copyright_holders_name = 'yourcompany, Toronto,ON Canada'

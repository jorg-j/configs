iabbrev prcd <pre><code></code></pre><Esc>2F<i

" marks
" set mark for file - m$lower_letter
" set mark for global - m$upper_letter
" goto mark start of line - '$letter
" go to exact mark - `$letter

" from normal mode !!$command to put the output of a command into the file

:set number
":set relativenumber
:set tabstop=4
:set ai
:set shiftwidth=4
:set expandtab
:set ignorecase
:set smartcase
:set mouse=a
":set foldmethod=indent
:set noswapfile
:set nobackup
:set noundofile
:set scrolloff=5

" Search
:set wildmode=list:longest,list:full

:set showcmd
:set incsearch
:set hlsearch
colorscheme industry

" allow easier ctrl+ j k l h movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" sets the split method to right and below
:set splitright
:set splitbelow

" buffer
nnoremap <leader>b :ls<CR>:b<Space>

" autocomplete
inoremap ,, <C-x><C-n>

syntax on
syntax enable
filetype indent on
filetype on

" python
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <F7> :w<CR>:exec '!black' shellescape(@%, 1)<CR>

augroup python_abbreviations
    autocmd!
    autocmd FileType python iab xa foo
augroup END

autocmd FileType python call s:python_abbreviations()
function! s:python_abbreviations()
    inoreabbr <buffer> shb #!/usr/bin/env python3
endfunction

inoremap _rf with open(, "r")as f:<CR>    data = f.read()<ESC>k$6ba

map <leader>s :source ~/.vimrc<CR>
nnoremap <F6> :wa \| vertical botright term ++kill=term<CR>
map <leader>t :vertical botright term ++kill=term<CR>

" Spelling
iab tks thanks
iab teh the
iab iv I've
iab dont don't
iab im I'm


let @g = "iGIVEN^MTHEN^M\<Esc>kkA"


iabbrev zz <Esc>xjx

iabbrev fgrep <ESC>0igrep -oP "<ESC>wwODi"<ESC>


" macros
" recording - q$letter
" playback - @$letter
" view - :reg $letter
" add to vimrc - let @a= simply type Ctrl-R Ctrl-R $letter


inoremap _pp this is <app> test<ESC>^/<app><CR>3dwicheese 


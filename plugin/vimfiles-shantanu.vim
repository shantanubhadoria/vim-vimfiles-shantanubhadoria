set nocompatible 		" Use Vimproved featureset

set history=256  		" Number of things to remember in history
set clipboard+=unnamed  	" Yanks go to clipboard
set pastetoggle=<F10>   	" Toggle between paste mode and normal mode
set shiftround			" round indent to multiple of 'shiftwidth'
set tags=.git/tags;$HOME       	" consider the repo tags first, then
                               	" walk directory tree upto $HOME looking for tags
                               	" note `;` sets the stop folder. :h file-search
set autowrite			" Automatically save file when focus is lost from the file.

set nobackup
set nowritebackup
set directory=/tmp//           	" prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
set noswapfile			" No annoying swap files
set hidden			" The current buffer can be put to the background without writing to disk
set ignorecase			" Case insensitive when searching
set smartcase                  	" be case sensitive when input has a capital letter
set incsearch                  	" show matches while typing

let g:is_posix = 1             	" vim's default is archaic bourne shell, bring it up to the 90s

set formatoptions+=tc          	" Autowrap text and comments using textwidth
set formatoptions+=r          	" Do not automatically insert a comment leader after an enter
set formatoptions+=a          	" Automatic formatting of paragraphs.  Every time text is inserted or deleted the paragraph will be reformatted.  See |auto-format|. When the 'c' flag is present this only happens for recognized comments. 
set formatoptions+=o          	" Automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set textwidth=80
				" for all formatoptions table http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table


set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set indentkeys-=0#              " do not break indent on #
set smartindent
set backspace=indent,eol,start  " http://vimdoc.sourceforge.net/htmldoc/options.html#'backspace'

set cindent
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case


syntax on

set nonumber                    " line numbers Off
set showmatch                   " Show matching brackets.
set matchtime=2                 " Bracket blinking.

set wildmode=longest,list       " At command line, complete longest common string, then list alternatives.
set completeopt+=preview
set showcmd                   " display an incomplete command in statusline

set statusline=%<%f\          " custom statusline
set stl+=[%{&ff}]             " show fileformat
set stl+=%y%m%r%=
set stl+=%-14.(%l,%c%V%)\ %P


set foldenable                " Turn on folding
set foldmethod=marker         " Fold on the marker
set foldlevel=100             " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,tag    " what movements open folds
set foldopen+=percent,mark
set foldopen+=quickfix

set virtualedit=block

filetype plugin indent on

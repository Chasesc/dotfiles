set nocompatible " break up with vi

syntax enable " enable syntax highlighting
filetype plugin on " turn on the filetype plugin

set rtp+=/usr/local/opt/fzf
set complete+=kspell " show spell checking suggestions only if spell check is enabled
set nu " show number of lines
set rnu " relative line numbering
set ruler " show current position in the file
set number " show line numbers
set showcmd " show the current command
set ts=4 " set tabs to have 4 spaces
set autoindent " indent when moving to the next line while writing code
set expandtab " expand tabs into spaces
set shiftwidth=4 " when using the >> or << commands, shift lines by 4 spaces
set cursorline " show a visual line under the cursor's current line
set showmatch " show the matching part of the pair for [] {} and ()
let python_highlight_all = 1 " enable all Python syntax highlighting features

set path+=** " search into subfolders
set wildmenu " show matches for tab complete

if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

" remap the caps lock key to escape in vim.
" in macos, this can be done via system preferences -> keyboard -> modifier
" keys
if g:os == "Linux"
    au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
    au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
endif

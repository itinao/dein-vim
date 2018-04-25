let s:dein_dir = expand('$DATA/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim ' . s:dein_repo_dir
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    call dein#load_toml(s:dein_dir . '/plugins.toml', {'lazy': 0})
    call dein#load_toml(s:dein_dir . '/lazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif


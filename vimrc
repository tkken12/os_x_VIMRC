set nu
set autoindent
set cindent
execute pathogen#infect()
syntax on






set nocompatible              " Vi와 호환 불가 설정, 필수
filetype off                  " 필수

" Vundle을 포함시키기 위해 runtime 경로를 설정하고 초기화
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 기존 경로 대신 Vundle이 플러그인을 설치할 경로를 입력하십시오.
"call vundle#begin('~/some/path/here')

" Vundle이 스스로를 관리하도록 설정, 필수
Plugin 'VundleVim/Vundle.vim'
-
" 아래는 지원되는 여러 형식들의 예시입니다
"
"
" 플러그인 명령어를 vundle#begin/end 사이에 추가하십시오
" GitHub 저장소에 있는 플러그인
Plugin 'tpope/vim-fugitive'
" http://vim-scripts.org/vim/scripts.html 에 있는 플러그인
" 'L9' 플러그인
" GitHub에 호스트 되어있지 않는 Git 플러그인
Plugin 'git://git.wincent.com/command-t.git'
" 사용하는 기기의 git 저장소 ( 당신만의 플러그인을 사용할 때 )
Plugin 'file:///home/gmarik/path/to/plugin'
" sparkup vim script는 vim 이란 이름의 저장소 하위 디렉토리 내부에 있습니다.
" 정확한 runtime 경로를 입력하십시오.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" L9를 설치하고, 만약 당신이 다른 버전을 어딘가 설치했을 경우 발생하는 이름 충돌 문제를 방지합니다
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'fatih/vim-go'

" 당신의 모든 플러그인은 다음 명령어 이전에 추가되어야 합니다
" 플러그인의 들여쓰기 변화를 무시하려면, 대신 이 명령어를 사용하십시오:
"filetype plugin on
"
" 간단한 도움말
" :PluginList       - 설정된 플러그인의 리스트
" :PluginInstall    - 플러그인 설치; 업데이트를 하려면 `!`를 덧붙이거나 :PluginUpdate 명령을 사용하십시오
" :PluginSearch foo - foo에 대해 검색; `!`를 덧붙여 로컬 캐시를 새로고침하십시오
" :PluginClean      - 사용하지 않는 플러그인의 삭제를 확인; `!`를 붙여 자동 삭제를 승인하십시오
"
" 더 자세한 내용은 :h vundle 문서나 wiki의 FAQ를 확인하십시오
" 다음 줄부터 플러그인이 아닌 내용을 넣으십시오

Plugin 'AutoComplPOP'
Plugin 'The-NERD-tree'
Plugin 'taglist-plus'
let NERDTreeWinPos = "left"
nmap <F7> :NERDTree<CR>

nmap <F8> :TlistToggle<CR>
filetype on
let Tlist_Ctags_Cmd = "/usr/bin/ctags"

let Tlist_Inc_Winwidth = 0

let Tlist_Exit_OnlyWindow = 0

let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
let g:go_fmt_command = "goimports"
let g:go_null_module_warning=0
call vundle#end()            " 필수
filetype plugin indent on    " 필수

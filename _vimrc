"""""""""""""""""" �������"""""""""""""""""
set nocompatible              " ȥ��VIһ����,����
filetype off                  " ����

" ���ð���vundle�ͳ�ʼ����ص�runtime path
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" ��һ��ѡ��, ָ��һ��vundle��װ�����·��
"call vundle#begin('~/some/path/here')

" ��vundle�������汾,����
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" ���·�������֧�ֲ�ͬ��ʽ�Ĳ����װ.
" �뽫��װ������������vundle#begin��vundle#end֮��.

" Github�ϵĲ��
" ��ʽΪ Plugin '�û���/����ֿ���'
"Plugin 'tpope/vim-fugitive'

" ���� http://vim-scripts.org/vim/scripts.html �Ĳ��
" Plugin '�������' ʵ������ Plugin 'vim-scripts/����ֿ���' ֻ�Ǵ˴����û�������ʡ��
"Plugin 'L9'

" ��Git֧�ֵ�����github�ϵĲ���ֿ� Plugin 'git clone ����ĵ�ַ'
"Plugin 'git://git.wincent.com/command-t.git'

" ���ص�Git�ֿ�(�����Լ��Ĳ��) Plugin 'file:///+���ز���ֿ����·��'
"Plugin 'file:///home/gmarik/path/to/plugin'

" ����ڲֿ����Ŀ¼��.
" ��ȷָ��·����������runtimepath. ���·��������sparkup/vimĿ¼��
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" ��װL9������Ѿ���װ�������������������¸�ʽ����������ͻ
"Plugin 'ascenator/L9', {'name': 'newL9'}

" ������в����Ҫ����������֮ǰ
call vundle#end()            " ����
filetype plugin indent on    " ���� ����vim�Դ��Ͳ����Ӧ���﷨���ļ�������ؽű�
" ���Ӳ���ı�����,����ʹ���������:
"filetype plugin on
"
" ��Ҫ�����ĵ�
" :PluginList       - �г����������õĲ��
" :PluginInstall    - ��װ���,׷�� `!` ���Ը��»�ʹ�� :PluginUpdate
" :PluginSearch foo - ���� foo ; ׷�� `!` ������ػ���
" :PluginClean      - ���δʹ�ò��,��Ҫȷ��; ׷�� `!` �Զ���׼�Ƴ�δʹ�ò��
"
" ���� :h vundle ��ȡ����ϸ�ں�wiki�Լ�FAQ
" �����Լ��Էǲ��Ƭ�η�������֮��
"""""""""""""""""""""""����������=========

let mapleader = ","
let maplocalleader = "\\"
"�༭ �ҵ� vimrc �ļ�
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"�ض� �ҵ� vimrc �ļ�
nnoremap <leader>sv :source $MYVIMRC<cr>

"ת������Ϊ��д
nnoremap <c-u> viwU

"���Ǹ�������˫���Ű�Χ
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" ע���������Һ�ESC
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>

" ��ʾ����
set nu

" �رռ���ģʽ
set nocompatible

syntax enable
syntax on
colorscheme desert
set nobackup

" ����tags֧��
" <C-]> ��ǰ��
" <C-t> �����
set tags=tags
set autochdir

set noundofile
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif

"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"���consle�������
language messages zh_CN.utf-8

"�����Զ���NERDTree
"autocmd vimenter * NERDTree

"���һ��ӳ�� �ڲ���ģʽͨ������<c-u>����ǰ������ڵĵ���ת���� ��д��ʽ
inoremap <c-u> <esc>bgUwea

"��TAB����4���ո�
set ts=4
set expandtab

"���php������ʾ����
set dictionary+=$HOME/.vim/PHP_funclist.txt
set complete-=k complete+=k
function! InsertTabWrapper()
    let col=col('.')-1
    if !col || getline('.')[col-1] !~ '\k'
        return "\<TAB>"
    else
        return "\<C-N>"
    endif
endfunction
inoremap <TAB> <C-R>=InsertTabWrapper()<CR>



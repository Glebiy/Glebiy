"замена табов пробелами
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"нумерация строк
set number

"отступ от края окна
set foldcolumn=2

syntax on
"перенос длинных строк
set wrap
"включим автоотступы для новых строк
set ai
"включим отступы в стиле Си
set cin
"Далее настроим поиск и подсветку результатов поиска и совпадения скобок
set showmatch
set hlsearch
set incsearch
set ignorecase
"Показываем табы в начале строки точками
set listchars=tab:··
set list
"Порядок применения кодировок и формата файлов
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
"Отключаем функционал перехвата мышки вне графического режима:
if !has('gui_running')
set mouse=
endif
"В разных графических системах используем разные шрифты:
if has('gui')
colorscheme darkblue
if has('win32')
set guifont=Lucida_Console:h12:cRUSSIAN::
else
set guifont=Terminus\ 14
endif
endif
"Пытаемся занять максимально большое пространство на экране. Как водится, по-разному на разных системах:
if has('gui')
if has('win32')
au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
elseif has('gui_gtk2')
au GUIEnter * :set lines=99999 columns=99999
endif
endif
"Опять же, системы сборки для разных платформ могут быть переопределены:
if has('win32')
set makeprg=nmake
compiler msvc
else
set makeprg=make
compiler gcc
endif


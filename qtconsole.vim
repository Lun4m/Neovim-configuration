" Qt console for jupyter like output
command! -nargs=0 RunQtConsole call jobstart('jupyter qtconsole --JupyterWidget.include_other_output=True --JupyterQtConsoleApp.hide_menubar=True')
command! -nargs=0 QtConsoleR call jobstart('jupyter qtconsole --JupyterWidget.include_other_output=True --JupyterQtConsoleApp.hide_menubar=True --kernel ir')
command! -nargs=0 QtConsoleJulia call jobstart('jupyter qtconsole --JupyterWidget.include_other_output=True --JupyterQtConsoleApp.hide_menubar=True --kernel julia-1.4')

let g:ipy_celldef = '^##' " regex for cell start and end

nmap <silent> <leader>jp :RunQtConsole<Enter>
nmap <silent> <leader>jr :QtConsoleR<Enter>
nmap <silent> <leader>jj :QtConsoleJulia<Enter>
nmap <silent> <leader>jk :IPython<Space>--existing<Space>--no-window<Enter>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)

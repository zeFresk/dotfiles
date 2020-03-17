" Additions to Vim's filetype plugin for Python, to set up PyUnit as
" the 'compiler' for Python files.

" Set the errorformat.
compiler pyunit

" Set 'makeprg': this allows you to call :make on any .py file and
" run all of the unit tests in the current working directory.
" Ensure you have this file.
setlocal makeprg=/usr/bin/alltests.py


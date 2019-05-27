"Etch" Code Highlighter
=======================
In this repository you find code highlighters for the Fetch.AI VM, currently named 
"Etch". The name may be subject to change in the near future.

Sublime 3
---------
The repository has plugin for Subblime Text 3. Below we give the installation instructions:


**Mac OS X** - On OS X, copy the file into Sublimes application support directory under `Packages/User/`:

```
cp sublime/etch.sublime-syntax ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
```

**Linux** - On Linux, the file is added to the Sublime config directory:

```
cp sublime/etch.sublime-syntax ~/.config/sublime-text-3/Packages/User/
```

Clion
---------
The repository has settings for CLion. The clion custom file types settings is limited since it does not 
permit regular expressions for specifying keywords. Therefore this highlighter has fewer features than
the sublime highlighter.

Below we give the installation instructions:

Select: File - Import settings, and browse to the file located at

```
clion/etch_file_type.zip

```
and import the file-types settings.


Emacs
-----
Yet to be written.

Vi/ViM
------
Move the files as follows:

~/.vim/filetype.vim
~/.vim/syntax/etch.vim

Eclipse
-------
Yet to be written.


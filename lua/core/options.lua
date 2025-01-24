-- <space> as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.opt.number = true
vim.opt.breakindent = true

-- how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- better scroll ;]
vim.opt.scrolloff = 15

-- autosave
vim.opt.autowrite = true

-- automatically reread files when modified
vim.opt.autoread = true

-- show partial commands in bottom-right corner of nvim window
vim.opt.showcmd = true
vim.opt.backspace = "2"

-- use system clipboard by default
vim.opt.clipboard = "unnamedplus"

-- always show tabs
vim.opt.showtabline = 1

-- dont create swap files
vim.opt.swapfile = false


-- treat words with "-" as a single word
vim.opt.iskeyword:append "-"

-- tabs and spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- ignore files
vim.opt.wildignore:append(".hg,.svn")
vim.opt.wildignore:append(".aux,*.out,*.toc")
vim.opt.wildignore:append(".o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class")
vim.opt.wildignore:append(".ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp")
vim.opt.wildignore:append(".avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg")
vim.opt.wildignore:append(".mp3,*.oga,*.ogg,*.wav,*.flac")
vim.opt.wildignore:append(".eot,*.otf,*.ttf,*.woff")
vim.opt.wildignore:append(".doc,*.pdf,*.cbr,*.cbz")
vim.opt.wildignore:append(".zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb")
vim.opt.wildignore:append(".swp,.lock,.DS_Store,._*")
vim.opt.wildignore:append(".,..")

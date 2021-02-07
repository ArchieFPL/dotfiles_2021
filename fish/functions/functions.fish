# |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
# | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/

# takes a file and makes a copy called file.bak
function backup --argument filename
    cp $filename $filename.bak
end

# takes file.bak and makes it file, removing original if there
function restore --argument file
    mv $file (echo $file | sed s/.bak//)
end

 # vim for manpager
function vman
    man $argv | col -b | nvim --clean -c 'runtime! macros/less.vim' -c 'set ft=man ic' -
end

function clock
  peaclock --config-dir ~/.config/peaclock/ $argv
end

function z
  zathura $argv & disown
end

# Clean unzip: Creates a top level folder if a zip file doesn't have one
# This prevents the directory from being cluttered with unzipped files
function clean-unzip --argument zipfile
    if not test (echo $zipfile | string sub --start=-4) = .zip
        echo (status function): argument must be a zipfile
        return 1
    end

    if is-clean-zip $zipfile
        unzip $zipfile
    else
        set zipname (echo $zipfile | trim-right '.zip')
        mkdir $zipname || return 1
        unzip $zipfile -d $zipname
    end
end

# unzip-cd utilizes clean-unzip to unzip and cd into a zip file
function unzip-cd --argument zipfile
    clean-unzip $zipfile && cd (echo $zipfile | trim-right .zip)
end

# better ls
function x
  command exa -la --color=always --group-directories-first $argv
end

# better journalctl
function jrnl
  command journalctl | lnav
end

# always ask when overwriting files with cp
function cp
  command cp -i $argv
end

# always ask when overwriting files with rm
function rm
  command rm -i $argv
end

# always make df human readable
function df
  command df -h
end

# always use base16 theme for bat
function bat
  command bat --theme base16 $argv
end
#
# always use base16 theme for bat
function c
  bat $argv
end

# put commit messages in quotes
function commit
  command git commit -m "$argv"
end

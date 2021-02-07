 # __  __       _         ____       _   _   _                 
# |  \/  | __ _(_)_ __   / ___|  ___| |_| |_(_)_ __   __ _ ___ 
# | |\/| |/ _` | | '_ \  \___ \ / _ \ __| __| | '_ \ / _` / __|
# | |  | | (_| | | | | |  ___) |  __/ |_| |_| | | | | (_| \__ \
# |_|  |_|\__,_|_|_| |_| |____/ \___|\__|\__|_|_| |_|\__, |___/

fish_vi_key_bindings

 # ____                            _   
# |  _ \ _ __ ___  _ __ ___  _ __ | |_ 
# | |_) | '__/ _ \| '_ ` _ \| '_ \| __|
# |  __/| | | (_) | | | | | | |_) | |_ 
# |_|   |_|  \___/|_| |_| |_| .__/ \__|
                          # |_|        
source $HOME/.config/fish/functions/prompt.fish

# ______     _   _     
# | ___ \   | | | |    
# | |_/ /_ _| |_| |__  
# |  __/ _` | __| '_ \ 
# | | | (_| | |_| | | |
# \_|  \__,_|\__|_| |_|
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/transmission:$PATH"

abbr v 'nvim'
abbr ga 'git add' 
abbr gp 'git push' 
abbr dc 'docker-compose'

 # _____                                 
# |  ___|                                
# | |__ _ ____   __ __   ____ _ _ __ ___ 
# |  __| '_ \ \ / / \ \ / / _` | '__/ __|
# | |__| | | \ V /   \ V / (_| | |  \__ \
# \____/_| |_|\_/     \_/ \__,_|_|  |___/

set EDITOR nvim

set COLOR1 (xrdb -query | grep "color1" | cut -f 2 | tail -1)


 # _____                 _   _                 
# |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
# | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
source $HOME/.config/fish/functions/functions.fish
source $HOME/.cache/wal/fzf.fish
source ~/.asdf/asdf.fish
#   ____             __ _
#  / ___|___  _ __  / _(_) __ _
# | |   / _ \| '_ \| |_| |/ _` |
# | |__| (_) | | | |  _| | (_| |
#  \____\___/|_| |_|_| |_|\__, |
#                         |___/
#  ____  _               _             _
# |  _ \(_)_ __ ___  ___| |_ ___  _ __(_) ___  ___
# | | | | | '__/ _ \/ __| __/ _ \| '__| |/ _ \/ __|
# | |_| | | | |  __/ (__| || (_) | |  | |  __/\__ \
# |____/|_|_|  \___|\___|\__\___/|_|  |_|\___||___/
#
set XDG_DATA_HOME "$HOME/.local/share"
set XDG_CACHE_HOME "$HOME/.cache"
set XDG_CONFIG_HOME "$HOME/.config"

# Other applications
set CARGO_HOME "$XDG_DATA_HOME/cargo" #rust
set GEM_PATH "$XDG_DATA_HOME/ruby/gems" #ruby
set GEM_HOME "$XDG_DATA_HOME/gem"
set GEM_SPEC_CACHE "$XDG_CACHE_HOME/gem"

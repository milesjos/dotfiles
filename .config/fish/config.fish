# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Load aliases
if [ -f $HOME/.config/fish/aliases.fish ]
  . $HOME/.config/fish/aliases.fish    
end

# Load abbreviations
if [ -f $HOME/.config/fish/abbr.fish ]
  . $HOME/.config/fish/abbr.fish    
end

# vim mode 
set -g theme_display_vi yes

if test -d /usr/local/rvm
  rvm default
end

set -g theme_date_format "+%a %b %d %I:%M:%S %Y"

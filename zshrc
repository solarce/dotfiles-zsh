##
### solarce's zsh config
##

# First things setup the basic PATH
# - multiple lines for readability
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.gem/ruby/2.2.0/bin:$PATH"
export PATH

# Set some global variables for configs
export DOTFILES_ZSH="$HOME/code/personal/dotfiles-zsh"

# set TERM
export TERM="xterm-256color"

# Pull in antigen first for plugin fun times
source $DOTFILES_ZSH/antigen/antigen.zsh

# pull in stuff i want from antigen bundles
source $DOTFILES_ZSH/antigen_config.zsh

# pull in custom environment variables
for file in $(echo $DOTFILES_ZSH/environment/*.zsh); do
  source $file
done

if [[ ! -L $DOTFILES_ZSH/environment/secret ]]; then
  if [[ ! -n $VC_MOUNT_PRIVATE ]]; then
    echo "set VC_MOUNT_PRIVATE"
    exit 1
  else
    ln -s $VC_MOUNT_PRIVATE/secret_environment_variables $DOTFILES_ZSH/environment/secret
    for file in $(echo $DOTFILES_ZSH/environment/secret/*.zsh); do
      source $file
    done
  fi
else
  for file in $(echo $DOTFILES_ZSH/environment/secret/*.zsh); do
    source $file
  done
fi

for file in $(echo $DOTFILES_ZSH/aliases/*.zsh); do
  source $file
done

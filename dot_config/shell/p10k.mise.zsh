# Powerlevel10k prompt segments for mise
# [Feature request: add segment for mise](https://github.com/romkatv/powerlevel10k/issues/2212)
# Usage in ~/.zshrc:
#   [[ -f ~/.config/shell/p10k.mise.zsh ]] && source ~/.config/shell/p10k.mise.zsh

() {
  function prompt_mise() {
   local plugins=("${(@f)$(mise ls --current --offline 2>/dev/null | awk '!/\(symlink\)/ && $3!="~/.tool-versions" && $3!="~/.config/mise/config.toml" && $3!="(missing)" {if ($1) print $1, $2}')}")
   local plugin
   for plugin in ${(k)plugins}; do
     local parts=("${(@s/ /)plugin}")
     local tool=${(U)parts[1]}
     local version=${parts[2]}
     p10k segment -r -i "${tool}_ICON" -s $tool -t "$version"
   done
 }

  # Colors
  typeset -g POWERLEVEL9K_MISE_BACKGROUND=1

  typeset -g POWERLEVEL9K_MISE_TERRAFORM_FOREGROUND=70
  typeset -g POWERLEVEL9K_MISE_TERRAFORM_VISUAL_IDENTIFIER_EXPANSION=' '
  typeset -g POWERLEVEL9K_MISE_TERRAFORM_SHOW_ON_UPGLOB='*.tf'

  typeset -g POWERLEVEL9K_MISE_PYTHON_FOREGROUND=51
  typeset -g POWERLEVEL9K_MISE_PYTHON_VISUAL_IDENTIFIER_EXPANSION=' '
  #typeset -g POWERLEVEL9K_MISE_PYTHON_SHOW_ON_UPGLOB='*.tf'


  # Substitute the default asdf prompt element
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=("${POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS[@]/asdf/mise}")
}


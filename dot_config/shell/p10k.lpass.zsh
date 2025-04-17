# Powerlevel10k prompt segments for lastpass
# Usage in ~/.zshrc:
#   [[ -f ~/.config/shell/p10k.lpass.zsh ]] && source ~/.config/shell/p10k.lpass.zsh
#
() {
  function prompt_my_lpass() {
    _p9k_cached_cmd 0 '' lpass --version || return
    #local lpass_status=$(lpass status --color=never | cut -d ' ' -f4)
    if [ $(lpass status --color=never | cut -d ' ' -f4) ]; then
      p10k segment -i '聾' -f 160
    else
      p10k segment -i '聾' -f 250
    fi
  }

  function instant_prompt_my_lpass() {
      prompt_my_lpass
  }

}

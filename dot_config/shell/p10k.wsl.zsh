## Segment my_wsl shows "wsl" when in WSL.
if [[ -r /proc/version && "$(</proc/version)" == *WSL* ]]; then
  prompt_my_wsl() p10k segment -f blue -t '󰖳'
  instant_prompt_my_wsl() prompt_my_wsl 
fi

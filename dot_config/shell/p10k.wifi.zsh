  function prompt_my_wifi() {
    p10k segment -f 68 -i '󰖩' -t $(getWifiSsid)
  }

  function instant_prompt_my_wifi() {
    # Since prompt_example always makes the same `p10k segment` calls, we can call it from
    # instant_prompt_example. This will give us the same `example` prompt segment in the instant
    # and regular prompts.
    prompt_my_wifi
  }

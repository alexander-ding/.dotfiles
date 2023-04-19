local wezterm = require 'wezterm'

return {
  font = wezterm.font 'FiraCode Nerd Font Mono',
  term = "xterm-256color",
  window_background_opacity = 0.7,
  keys = {
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
  },
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = 'RESIZE',
}

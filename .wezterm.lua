local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 200
config.initial_rows = 50

config.color_scheme = 'GruvboxLight'

-- Font
config.font = wezterm.font_with_fallback {
  'PragmataProMonoLiga Nerd Font',
  'PragmataPro Mono Liga',
}
config.bold_brightens_ansi_colors = 'BrightAndBold'
config.font_size = 10.0
config.allow_square_glyphs_to_overflow_width = 'Never'
-------

-- Tabbar:
config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.window_decorations = 'NONE'
config.hide_tab_bar_if_only_one_tab = false
config.enable_scroll_bar = false
-----------

-- Keybindings:
config.disable_default_key_bindings = true

local act = wezterm.action
config.keys = {
    { key = '1', mods = 'CTRL', action = act.ActivateTab(0) },
    { key = '2', mods = 'CTRL', action = act.ActivateTab(1) },
    { key = '3', mods = 'CTRL', action = act.ActivateTab(2) },
    { key = '4', mods = 'CTRL', action = act.ActivateTab(3) },
    { key = '5', mods = 'CTRL', action = act.ActivateTab(4) },
    { key = '6', mods = 'CTRL', action = act.ActivateTab(5) },
    { key = '7', mods = 'CTRL', action = act.ActivateTab(6) },
    { key = '8', mods = 'CTRL', action = act.ActivateTab(7) },
    { key = '9', mods = 'CTRL', action = act.ActivateTab(-1) },

    { key = 't', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'd', mods = 'CTRL', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'd', mods = 'CTRL|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = 'w', mods = 'CTRL', action = act.CloseCurrentPane{ confirm = false } },

    { key = '[', mods = 'CTRL', action = act.ActivatePaneDirection 'Left' },
    { key = ']', mods = 'CTRL', action = act.ActivatePaneDirection 'Right' },
    { key = ']', mods = 'SUPER', action = act.ActivatePaneDirection 'Down' },
    { key = '[', mods = 'SUPER', action = act.ActivatePaneDirection 'Up' },

    { key = 'c', mods = 'CTRL', action = act.CopyTo 'ClipboardAndPrimarySelection', },
    { key = 'v', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

    { key = 'c', mods = 'CTRL', action = act.CopyTo 'ClipboardAndPrimarySelection', },
    { key = 'v', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

    { mods = "SUPER", key = "LeftArrow", action = act.SendKey({ mods = "ALT", key = "b" }) },
    { mods = "SUPER", key = "RightArrow", action = act.SendKey({ mods = "ALT", key = "f" }) },
    { mods = "CTRL", key = "LeftArrow", action = act.SendKey({ mods = "CTRL", key = "a" }) },
    { mods = "CTRL", key = "RightArrow", action = act.SendKey({ mods = "CTRL", key = "e" }) },
    { mods = "CTRL", key = "Backspace", action = act.SendKey({ mods = "CTRL", key = "u" }) },
}
---------------

return config

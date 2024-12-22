-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

config.mouse_bindings = {{
    event = {
        Down = {
            streak = 1,
            button = "Right"
        }
    },
    mods = "NONE",
    action = wezterm.action_callback(function(window, pane)
        local has_selection = window:get_selection_text_for_pane(pane) ~= ""
        if has_selection then
            window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
            window:perform_action(act.ClearSelection, pane)
        else
            window:perform_action(act({
                PasteFrom = "Clipboard"
            }), pane)
        end
    end)
}}

config.keys = {{
    key = 'v',
    mods = 'CTRL',
    action = act.PasteFrom 'Clipboard'
}, {
    key = 'c',
    mods = 'CTRL',
    action = act.CopyTo 'Clipboard'
}}

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.6
-- config.window_background_opacity = 0
config.win32_system_backdrop = 'Acrylic'
-- This is where you actually apply your config choices

config.launch_menu = {{
    args = {'top'}
}, {
    label = 'Pwsh',
    args = {'pwsh.exe', '-NoLogo'}
}}
-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Frappe'

config.font = wezterm.font('Fira Code')
-- and finally, return the configuration to wezterm
return config

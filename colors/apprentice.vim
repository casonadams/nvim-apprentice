set background=dark
let g:colors_name="nvim-apprentice"

lua package.loaded['lush_theme.apprentice'] = nil
lua require("lush")(require("lush_theme.apprentice"))

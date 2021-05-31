set background=dark
let g:colors_name="nvim-apprentice"

lua package.loaded['nvim-apprentice'] = nil
lua require("lush")(require("nvim-apprentice"))

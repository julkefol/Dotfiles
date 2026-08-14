-- config for mini.nvim modules

require('mini.pairs').setup()

-- Visualize scope with animated vertical line
require('mini.indentscope').setup({
    draw = {
        -- Delay (in ms) between event and start of drawing scope indicator
        delay = 10,

        -- disable animation
        animation = require('mini.indentscope').gen_animation.none()
    },
})

gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

util.no_globals()

local on = false

util.data_mapper{
    state = function(state)
        on = state == '1'
    end,
}

function node.render()
    if on then
        gl.clear(0, 1, 0, 1) -- green
    else
        gl.clear(1, 0, 0, 1) -- red
    end
end

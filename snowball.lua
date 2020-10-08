local snowball = {
    _VERSION        = 'snowball 0.1',
    _LICENSE        = 'GPLv3, https://www.gnu.org/licenses/gpl-3.0.html',
    _DESCRIPTION    = 'Use PIG image files on LÖVE2D'
}

--[[---------------------------------------------------------------------------

Love2d implementation of PIG image file format

-----------------------------------------------------------------------------]]

local function colorConvert(color)
    return color[1]/255, color[2]/255, color[3]/255
end

function snowball.draw(image, position, pixelSize)
    colors = image[1]
    pixels = image[2]
    pixelSize = pixelSize or 1
    for i, line in ipairs(pixels) do
        for j, pixel in ipairs(line) do
            if pixel ~= 0 then
                love.graphics.setColor(colorConvert(colors[pixel]))
                love.graphics.rectangle("fill", position.x + (pixelSize * j), position.y + (pixelSize * i), pixelSize, pixelSize)
            end
        end 
    end
end

function snowball.loadImage(filePath)
    extension = assert(filePath:match "[^.]+$" == 'pig', "wrong file format specified")
    file = io.open(filePath, "r")
    io.input(file)
    file = io.read()
    data = [[ image = ]] .. file .. [[]] 
    loadstring(data)()
    return image
end

return snowball

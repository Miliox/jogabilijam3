require "assets"

local Object = require "libs/classic/classic"

Character = Object:extend()

function Character:new(x, y)
   self.position = vector(x, y)
end

function Character:update(dt)
   if self.sprite == nil then
      return
   end
   self.sprite.x = self.position.x
   self.sprite.y = self.position.y
   self.sprite:update(dt)
end

function Character:draw(ox, oy)
   if self.sprite == nil then
      return
   end

   self.sprite:draw(ox, oy)
end

return Character
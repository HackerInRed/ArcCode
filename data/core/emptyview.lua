local style = require "core.style"
local keymap = require "core.keymap"
local View = require "core.view"

---@class core.emptyview : core.view
---@field super core.view
local EmptyView = View:extend()

function EmptyView:draw()
  self:draw_background(style.background)

  local title = "ArcCode"
  local title_width = style.big_font:get_width(title)
  local x = self.position.x + (self.size.x - title_width) / 2
  local y = self.position.y + (self.size.y - style.big_font:get_height()) / 2
  renderer.draw_text(style.big_font, title, x, y, style.dim)

  local version = "LiteXL version " .. VERSION
  local version_width = style.font:get_width(version)
  local version_x = self.position.x + (self.size.x - version_width) / 2
  local version_y = y + style.big_font:get_height() + style.padding.y
  renderer.draw_text(style.font, version, version_x, version_y, style.dim)
end

return EmptyView
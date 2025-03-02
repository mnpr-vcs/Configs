-------------------------------------------------
--   (       )         (               
--   )\   ( /(     )   )\ )  (         
-- (((_)  )\()) ( /(  (()/(  )(    (   
-- )\___ ((_)\  )(_))  ((_))(()\   )\  
-- ((/ __|| |(_)((_)_   _| |  ((_) ((_) 
-- | (__ | ' \ / _` |/ _` | | '_|/ _|  
--  \___||_||_|\__,_|\__,_| |_|  \__|  
-- @Mnpr
-------------------------------------------------
-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
  transparency="true",
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  telescope = {style="borderless"}, -- bodered
  statusline={
    theme="default",
    separator_style="arrow"

  }
}

return M

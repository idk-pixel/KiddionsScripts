local rep = menu.add_submenu('Reports Count')
local Griefing = 'MPPLY_GRIEFING'
local Exploits = 'MPPLY_EXPLOITS'
local GAME_EXPLOITS = 'MPPLY_GAME_EXPLOITS'
local textChatAnnoyingMe = 'MPPLY_VC_ANNOYING_ME'
local HateSpeechTC = 'MPPLY_TC_HATE'
local VCAnnoyer = 'MPPLY_VC_ANNOYINGME'
local vchate = 'MPPLY_VC_HATE'
local VCBadWords = 'MPPLY_OFFENSIVE_LANGUAGE'
local OffensiveVHPLT = 'MPPLY_OFFENSIVE_TAGPLATE'
local OffensvieContent = 'MPPLY_OFFENSIVE_UGC'
local badCrewName = 'MPPLY_BAD_CREW_NAME'
local badCrewMotto = 'MPPLY_BAD_CREW_MOTTO'
local badCrewStatus = 'MPPLY_BAD_CREW_STATUS'
local badCrewELB = 'MPPLY_BAD_CREW_ELBLEM'
local Friendly = 'MPPLY_FRIENDLY'
local Helpful = 'MPPLY_HELPFUL'

rep:add_bare_item("", function() return "Griefing:".. (string.format("%03d", stats.get_int(Griefing))) end, function() end, function()end, function() return end)
rep:add_bare_item("", function() return "Exploits:".. (string.format("%03d", stats.get_int(Exploits))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Bug Exploits:".. (string.format("%03d", stats.get_int(GAME_EXPLOITS))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Text Chat:Annoying Me:".. (string.format("%03d", stats.get_int(textChatAnnoyingMe))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Text Chat:Using Hate Speech:".. (string.format("%03d", stats.get_int(HateSpeechTC))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Voice Chat:Annoying Me:".. (string.format("%03d", stats.get_int(VCAnnoyer))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Voice Chat:Using Hate Speech:".. (string.format("%03d", stats.get_int(vchate))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Offensive Language:".. (string.format("%03d", stats.get_int(VCBadWords))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Offensive Tagplate:".. (string.format("%03d", stats.get_int(OffensiveVHPLT))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Offensive Content:".. (string.format("%03d", stats.get_int(OffensvieContent))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Bad Crew Name:".. (string.format("%03d", stats.get_int(badCrewName))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Bad Crew Motto:".. (string.format("%03d", stats.get_int(badCrewMotto))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Bad Crew Status:".. (string.format("%03d", stats.get_int(badCrewStatus))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Bad Crew Emblem:".. (string.format("%03d", stats.get_int(badCrewELB))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Friendly:".. (string.format("%03d", stats.get_int(Friendly))) end, function() end, function()end, function()end)
rep:add_bare_item("", function() return "Helpful:".. (string.format("%03d", stats.get_int(Helpful))) end, function() end, function()end, function()end)

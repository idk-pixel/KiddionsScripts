local function Text(submenu, text)
    submenu:add_action(text, function () end)
    print('APPENDING TEXT ' ..text)
end

-- PI Global

local PIGlobal = 'MPPLY_LAST_MP_CHAR'

-- Agency 

local AgencyGlobalCash = 293534;
local AgencyGlobalBS = 4092;
local AgencyGlobalStrand = -1;
local AgencyMin = 1000000;
local AgencyMax = 2000000;

-- Cuts Global (Casino)

local CasinoGlobalP1 = 19690 + 60 + 5;
local CasinoGlobalP2 = 19690 + 60 + 6;
local CasinoGlobalP3 = 19690 + 60 + 7;
local CasinoGlobalP4 = 19690 + 60 + 8;

-- Submenu

local MainHeistEditor = menu.add_submenu('Heist Editor')

local Casino_Editor = MainHeistEditor:add_submenu('Casino Heist Editor')

local Cayo_Editor = MainHeistEditor:add_submenu('Cayo Heist Editor')

local Agency_Editor = MainHeistEditor:add_submenu('Agency Heist Editor')

-- Code for Casino Heist Editor

Text(Casino_Editor, 'Set Targets Num list')
Text(Casino_Editor, 'Cash Equals 1')
Text(Casino_Editor, 'Gold Equals 2')
Text(Casino_Editor, 'Art Equals 3')
Text(Casino_Editor, 'Diamonds Equals 4')

Casino_Editor:add_int_range("Select Target From List", 1, 1, 4, function()
    return stats.get_int(mpx .. "H3OPT_TARGET")
end, function(Target)
    PlayerIndex = globals.get_int(PIGlobal)
    if PlayerIndex == 0 then
        mpx = "MP0_"
    else
        mpx = "MP1_"
    end
    if Target == 1 then
        H3t = 0
    elseif Target == 2 then
        H3t = 1
    elseif Target == 3 then
        H3t = 2
    elseif Target == 4 then
        H3t = 3
    end
    stats.set_int(mpx .. "H3OPT_TARGET", H3t)
end)

Text(Casino_Editor, 'Approach Settings')

Casino_Editor:add_int_range("Random Approach - Normal/Hard", 1, 1, 2, function() return 1 end, function(H3lvl)
	LstAp = stats.get_int(mpx .. "H3_LAST_APPROACH")
	HrdAp = stats.get_int(mpx .. "H3_HARD_APPROACH")
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if H3lvl == 2 then
		Apr = HrdAp
	else
		if LstAp == 2 and HrdAp == 3 then
		Apr = 1
		elseif LstAp == 3 and HrdAp == 2 then
		Apr = 1
		elseif LstAp == 3 and HrdAp == 1 then
		Apr = 2
		elseif LstAp == 1 and HrdAp == 3 then
		Apr = 2
		else
		Apr = 3
		end
	end
		stats.set_int(mpx .. "H3OPT_APPROACH", Apr)
end)

Text(Casino_Editor,"ONLY TAKE IF ON EASY APPR!")

Casino_Editor:add_int_range("EasyApproach - Snk/BgCon/Aggr", 1, 1, 3, function() return 1 end, function(Approach)
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Approach == 1 then
		LastApproach = 3
		HardApproach = 2
		Weapon = 1
	elseif Approach == 2 then
		LastApproach = 3
		HardApproach = 1
		Weapon = 0
	else
		LastApproach = 1
		HardApproach = 2
		Weapon = 0
	end
		stats.set_int(mpx .. "H3_LAST_APPROACH", LastApproach)
		stats.set_int(mpx .. "H3_HARD_APPROACH", HardApproach)
		stats.set_int(mpx .. "H3OPT_APPROACH", Approach)
end)
 
Text(Casino_Editor,'Only Take on HardAppr')

Casino_Editor:add_int_range("HardApproach - Snk/BgCon/Aggr", 1, 1, 3, function() return stats.get_int(mpx .. "H3_HARD_APPROACH") end, function(Approach)
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Approach == 1 then
		LastApproach = 3
		HardApproach = 1
	elseif Approach == 2 then
		LastApproach = 3
		HardApproach = 2
	else
		LastApproach = 1
		HardApproach = 3
	end
		stats.set_int(mpx .. "H3_LAST_APPROACH", LastApproach)
		stats.set_int(mpx .. "H3_HARD_APPROACH", Approach)
		stats.set_int(mpx .. "H3OPT_APPROACH", Approach)
end)

Casino_Editor:add_action("             ---[[Complete Board1]]---", function()
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
		stats.set_int(mpx .. "H3OPT_BITSET1", -1)
end)

Text(Casino_Editor,'Set Hackers')

Casino_Editor:add_int_range("Hacker - Rickie 3%/Avi 10%/Paige 9%", 1, 1, 3, function() return stats.get_int(mpx .. "H3OPT_CREWHACKER") end, function(Hkr)
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
	if Hkr == 1 then
		H3Hcr = 1
	elseif Hkr == 2 then
		H3Hcr = 4
	else
		H3Hcr = 5
	end
		stats.set_int(mpx .. "H3OPT_CREWHACKER", H3Hcr)
end)

Text(Casino_Editor,'Masks')

Text(Casino_Editor,"Mask - Geom/Huntr/OniH/Emj/Skll/Fruit/")
Casino_Editor:add_int_range("Grlla/Clwn/Anml9/Riot/OniF/Hockey", 1, 1, 12, function() return stats.get_int(mpx .. "H3OPT_MASKS") end, function(H3Msk)
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
--	hMsk = H3Msk
		stats.set_int(mpx .. "H3OPT_MASKS", H3Msk)
end)

Text(Casino_Editor,'Complete Board2')
 
Casino_Editor:add_action("       ---[[Complete Board2 - Finale]]---", function()
	PlayerIndex = globals.get_int(PIGlobal)
	if PlayerIndex == 0 then
		mpx = "MP0"
	else
		mpx = "MP1"
	end
		stats.set_int(mpx .. "_H3OPT_DISRUPTSHIP", 3)
		stats.set_int(mpx .. "_H3OPT_KEYLEVELS", 2)
		stats.set_int(mpx .. "_H3OPT_CREWWEAP", 1)
		stats.set_int(mpx .. "_H3OPT_CREWDRIVER", 1)
		stats.set_int(mpx .. "_H3OPT_VEHS", 3)
		stats.set_int(mpx .. "_H3OPT_WEAPS", 0)
		stats.set_int(mpx .. "_H3OPT_BITSET0", -129)
end)
Text(Casino_Editor, 'Cuts (179%)')

Casino_Editor:add_int_range("Casino Player1 Cut", 179.0, 15, 179, function() 
	return globals.get_int(CasinoGlobalP1)
end, function(value)
	globals.set_int(CasinoGlobalP1, value)
end)
 
Casino_Editor:add_int_range("Casino Player2 Cut", 179.0, 15, 179, function() 
	return globals.get_int(CasinoGlobalP2)
end, function(value)
	globals.set_int(CasinoGlobalP2, value)
end)
 
Casino_Editor:add_int_range("Casino Player3 Cut", 179.0, 15, 179, function() 
	return globals.get_int(CasinoGlobalP3)
end, function(value)
	globals.set_int(CasinoGlobalP3, value)
end)
 
Casino_Editor:add_int_range("Casino Player4 Cut", 179.0, 15, 179, function() 
	return globals.get_int(CasinoGlobalP4)
end, function(value)
	globals.set_int(CasinoGlobalP4, value)
end)

Casino_Editor:add_submenu('Credits'):add_action('WhoAboutYT',function()end)
 
-- Cayo Code

Text(Cayo_Editor,'Create Cayo Heist')
Text(Cayo_Editor,'Select Type Of Target')
Text(Cayo_Editor, 'Target Num List')
Text(Cayo_Editor, 'Tequila = 0')
Text(Cayo_Editor, 'Ruby = 1')
Text(Cayo_Editor, 'Bonds = 2')
Text(Cayo_Editor, 'Diamond = 3')
Text(Cayo_Editor, 'Files = 4')
Text(Cayo_Editor, 'Panther = 5')
Cayo_Editor:add_int_range("Primary Target", 1, 0, 5, function()
    return 1
end, function(H4CNF_TARGET)
    PlayerIndex = globals.get_int(1574915)
    if PlayerIndex == 0 then
        mpx = "MP0_"
    else
        mpx = "MP1_"
    end
    if H4CNF_TARGET == 0 then
        Value = 0
    end
    if H4CNF_TARGET == 1 then
        Value = 1
    end
    if H4CNF_TARGET == 2 then
        Value = 2
    end
    if H4CNF_TARGET == 3 then
        Value = 3
    end
    if H4CNF_TARGET == 4 then
        Value = 4
    end
    if H4CNF_TARGET == 5 then
        Value = 5
    end
    stats.set_int(mpx .. "H4CNF_TARGET", H4CNF_TARGET)
end)
Cayo_Editor:add_int_range("Set Up Max Cayo - # of Players:", 1, 1, 4, function()
    return 1
end, function(NumPlayers)
    if NumPlayers == 1 then
        LootValue = 538484
    end
    if NumPlayers == 2 then
        LootValue = 1235151 -- Use 50%/50% split
    end
    if NumPlayers == 3 then
        LootValue = 1375382 -- Use 35%/3 0)
        stats.set_int("MP1_H4LOOT_WEED_C", 0)
        stats.set_int("MP1_H4LOOT_WEED_C_SCOPED", 0)
        stats.set_int("MP1_H4LOOT_PAINT", 0)
        stats.set_int("MP1_H4LOOT_PAINT_SCOPED", 0)
        stats.set_int("MP1_H4LOOT_GOLD_C", 255)
        stats.set_int("MP1_H4LOOT_GOLD_C_SCOPED", 255)
        stats.set_int("MP1_H4LOOT_GOLD_V", LootValue)
    end
end)
Cayo_Editor:add_submenu('Credits'):add_action('WhoAboutYT',function()end)

-- Agency Code

Text(Agency_Editor, 'Welcome!')

local function Agency_Setup_Mission_Prep_comp()
	if PlayerIndex == 0 then 
		local mp_fix = "MP0_"
	else
		local mp_fix = "MP1_"
	end

	stats.set_int(mp_fix .. 'FIXER_STORY_BS', AgencyGlobalBS)
	stats.set_int(mp_fix .. 'FIXER_STORY_STRAND', AgencyGlobalStrand)
end

Text(Agency_Editor, '<----- < DrDre > ------>')

Agency_Editor:add_action('Setup Dr Dre Mission', Agency_Setup_Mission_Prep_comp)

Agency_Editor:add_int_range('Dre Finale Payout', AgencyMin, AgencyMin, AgencyMax, function() 
return globals.get_int(AgencyGlobalCash)
end, function (value) 
return globals.set_int(AgencyGlobalCash, value)
end); Agency_Editor:add_submenu('Credits'):add_action('WhoAboutYT',function()end)


-- Every Menus Credit to WhoAboutYT

-- Everything was made by WhoAboutYT
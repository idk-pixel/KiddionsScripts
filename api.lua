-- api by WhoAboutYT 

-- designed for kiddions Modest menu 0.9.8

-- Global List 

Globals_List = {
    PlayerIndex = 1574918
}

--     PlayerIndex Function 

function PlayerIndex() 
    Index = globals.get_int(Globals_List.PlayerIndex)
    if PlayerIndex == 0 then
        return "MP0_"
    else
        return "MP1_"
    end
end

--     API defenitions for Globals 

globals = {}

if globals then
    function globals.get_boolean(index) end -- Returns a boolean
    function globals.get_float(index) end -- Returns a float
    function globals.get_int(index) end -- Returns an integer
    function globals.get_uint(index) end -- Returns a uint 
    function globals.set_boolean(index, val) end -- Sets a boolean 
    function globals.set_float(index, val) end -- Sets a float 
    function globals.set_int(index, value) end -- Sets a integer 
    function globals.set_string(index, val) end -- Sets a string 
    function globals.set_uint(index, val) end -- Sets a uint
end

-- end of api

--[[

Operations.lua is an open source library primarily developed for use with the LÖVE engine, for the [Intersidera] project. 
It contains a set of functions designed to heavily simplify various if statements, and shorten these operations into a single function.





]]--





local isNum = function(var)
    if type(var) == "number" then return true else return false end
end
local isTable = function(var)
    if type(var) == "table" then return true else return false end
end




local positive = function(num)
    if not isNum(num) then return false end
    if num > 0 then return true else return false end
end

local negative = function(num)
    if not isNum(num) then return false end
    if num < 0 then return true else return false end
end





local equal = function(var1, var2)
    if type(var1) ~= type(var2) then return false end
    if isNum(var1) then
        return (var1 == var2)
    end
    if isTable(var1) then
        -- to be implemented
    end
end    



local op = {
    -- type checking
    isNum = isNum,
    isTable = isTable,

    -- value comparison
    positive = positive,
    negative = negative,
    equal = equal
}
return op

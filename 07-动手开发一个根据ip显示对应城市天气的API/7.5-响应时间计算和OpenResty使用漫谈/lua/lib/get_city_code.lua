

function getCityCodeByName(cityEName)
  if cityEName==nil then
    return nil
  end

  local f = io.open('/usr/local/openresty/nginx/html/city.json','r')
local fineContent = f:read("*a")
f:close()

local cJon = require('cjson')

local ok = pcall(function (str) cityMap =cJon.decode(str) end ,fineContent)

local cityCode = nil

if ok then
  for i,v in pairs(cityMap) do
    if string.lower(i) == string.lower(cityEName) then
       cityCode=v['code']
    end
  end
end
return cityCode
end

return getCityCodeByName

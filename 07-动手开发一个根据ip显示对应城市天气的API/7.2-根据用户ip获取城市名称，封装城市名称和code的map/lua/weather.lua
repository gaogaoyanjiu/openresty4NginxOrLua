local cityEName = ngx.var.geoip_city;
local getCityCode = require('get_city_code')
cityCode = getCityCode(cityEName)
ngx.say(cityCode)

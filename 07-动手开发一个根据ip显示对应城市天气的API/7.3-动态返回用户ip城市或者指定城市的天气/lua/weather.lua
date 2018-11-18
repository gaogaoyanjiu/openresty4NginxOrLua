local cityEName = ngx.var.geoip_city;

local getPrams = ngx.req.get_uri_args()

if getPrams['cityName'] ~=nil then
  cityEName = getPrams['cityName']
end

local getCityCode = require('get_city_code')

cityCode = getCityCode(cityEName)

if cityCode == nil then
  cityCode = 101020100
end

local req = ngx.location.capture('/weather_internal',{
   args={
    cityCode=cityCode
    }
})

ngx.say(req.body)

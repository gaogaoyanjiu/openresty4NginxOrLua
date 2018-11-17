local tools = require('tools')

local startTime= ngx.now()

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

local restyRedis = require('resty.redis')

local redisHandle = restyRedis:new()

local ok,err = redisHandle:connect('127.0.0.1',6379)

if ok then
   local cityWeatherJson = redisHandle:get(cityCode)
   if ngx.null ~= cityWeatherJson then
     ngx.header['X-Data-By'] = 'redis'
     ngx.header['X-Cost-Time'] = tools.getCostTime(startTime,ngx.now())
     ngx.say(cityWeatherJson)
     ngx.eof()
   end
end


local req = ngx.location.capture('/weather_internal',{
  args={
    cityCode = cityCode
  }
})

ngx.header['X-Data-By'] = 'http'

if req.status==200 then
   redisHandle:set(cityCode,req.body)
   ngx.header['X-Cost-Time'] = tools.getCostTime(startTime,ngx.now())
   ngx.say(req.body)
else
  local cjson = require('cjson')
  ngx.say(cjson.encode({}))
end

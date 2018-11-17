--ngx.say("weather API")

local req = ngx.location.capture("/weather_internal")

--ngx.say(req.status)
ngx.say(req.body)
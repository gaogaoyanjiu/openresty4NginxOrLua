local cjson = require("cjson")  
local obj = {
         id = 1, 
         name = "zhangsan", 
         age = nil, 
         is_male = false, 
         hobby = {"film", "music", "read"}
        } 
local str = cjson.encode(obj) 
ngx.say(str, "<br/>") 
str = '{"hobby":["film","music","read"],"is_male":false,"name":"zhangsan","id":1,"age":null}' 
local obj = cjson.decode(str) 
ngx.say(obj.age, "<br/>") 
ngx.say(obj.age == nil, "<br/>") 
ngx.say(obj.age == cjson.null, "<br/>") 
ngx.say(obj.hobby[1], "<br/>") 

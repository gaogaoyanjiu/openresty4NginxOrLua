--local a=2
--local b=3

--print(a+b,a-b,a*b,a/b,a^b,a%b)

--print(a<b,a>b,a<=b,a>=b,a==b,a~=b)

--print(a and b,b and a,nil and b,a and nil)
--print(a or b,nil or b,b or a)
--print(not a,not 0)

--print(a.."mm"..b)
--print(string.format("%f,%f",a,b))

--if a then
  --print("a true")
--end

--if a<b then
--print("a < b")
--else
--print("a >=b")
--end

--if a>b then
--print("a>b")
--elseif a==b then
--print("a=b")
--else
--print("a<b")
--end

local a= 20

while a>10 do
--print(a)
a=a-1
end

--print("--------------")

local b=20

repeat 
--print(b)
b=b-1
until b<10


t={1,2,3}


for i=0,4,1 do
  --print(i)
  --print(t[i])
end

for i,v in ipairs(t) do
   --print(i,v)
end

for i,v in pairs(t) do
   --print(i,v)
end

tt={a=2,b=4}


for i,v in ipairs(tt) do
   --print(i,v)
end

for i,v in pairs(tt) do
   --print(i,v)
end




function aa(a)
 return 1,a
end

local bb=function (b)
  b[2] = 4
  return b
end

cc,dd=aa("a")
print(cc,dd)
local mm = {2,3}
local nn=bb(mm)
--print(table.concat(nn),table.concat(mm))


function ooo(...)
print(table.concat({...}))
end

--ooo("mm",4,9,"kk")



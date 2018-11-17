
--四则运算
local a=2
local b=3

print("四则运算",a+b,a-b,a*b,a/b,a^b,a%b)

--比较运算符
print("比较运算",a<b,a>b,a<=b,a>=b,a==b,a~=b)

--逻辑运算符
print("逻辑运算and",a and b,b and a,nil and b,a and nil)
print("逻辑运算nil和flase",false==nil,a and false,false and b)
print("逻辑运算or",a or b,nil or b,false or a,b or a)
print("逻辑运算not",not a,not 0,not nil,not false)

--字符串拼接
print("字符串运算..",a.."mm"..b)
print("字符串运算string.format()",string.format("%d,%f",a,b))


--if控制语句

if a then
print("if控制语句","a is true")
end

if a>b then
print("if...else...","a>b")
else
print("if...else...","a<b")
end


if a==b then
print("if...elseif...else...","a==b")
elseif a<b then
print("if...elseif...else...","a<b")
else
print("if...elseif...else...","a>b")
end


print("--------------我是分隔符-------------")

local m= 10

while m>1 do
print("while...do...循环",m)
m=m-1
end

print("--------------我是分隔符-------------")

local n= 10
repeat 
print("repeat...until...循环",n)
n=n-1
until n<1


print("--------------我是分隔符-------------")

for i=10,1,-1 do
    print("for循环",i)
end


print("--------------我是分隔符-------------")

local h={10,20,30,40,50}

for i,v in ipairs(h) do

print("for i,v in ipairs(h) do循环",i,v)
end

print("--------------我是分隔符-------------")

for i,v in pairs(h) do
print("for i,v in pairs(h) do循环",i,v)
end

print("--------------我是分隔符-------------")
kk={a=2,b=4,c=6}

for i,v in pairs(kk) do
print("hash for循环(pairs)",i,v)
end

print("--------------我是分隔符-------------")


function aa(a)
 print("函数",a)
end

local bb=function (b)
print("函数",table.concat(b))
end

aa("66")
bb({22,33})


print("--------------我是分隔符-------------")



function gg(a)
return a
end

local hh=function (b)

b[2]=16
return b
end

local pp=gg("6")

print("函数返回值",pp)
local ff={23,65}
local ss=hh(ff)
print("函数参数值传递(值传递or引用传递)",table.concat(ss,","),table.concat(ff,","))


print("--------------我是分隔符-------------")

function ooo(...)
print("函数不定参数function 名称(...)",table.concat({...},","))
end


ooo("mm",4,9,"kk")


print("--------------我是分隔符-------------")


function yy(a)
return a,88
end

ww,ee=yy("33")

print("函数多返回值",ww,ee)

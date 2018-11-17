local tools = {}

tools.getCostTime = function (startTime,endTime)
   return string.format('%.2f%s',(endTime-startTime)*1000,'ms')
end

return tools

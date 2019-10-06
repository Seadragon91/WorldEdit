cStopWatch = {}
cStopWatch.__index = cStopWatch

function cStopWatch.new()
	local self = setmetatable({}, cStopWatch)
	return self
end


function cStopWatch:Start()
	self.m_IsRunning = true
	self.m_Start = cRoot:Get():GetCurrentTimeInMillseconds()
end



function cStopWatch:Stop()
	self.m_IsRunning = false
	self.m_Stop = cRoot:Get():GetCurrentTimeInMillseconds()
end



function cStopWatch:GetElapsedMilliseconds()
	if self.m_Start == nil then
		return 0
	end
	if self.m_IsRunning then
		return cRoot:Get():GetCurrentTimeInMillseconds() - self.m_Start
	else
		return self.m_Stop - self.m_Start
	end
end

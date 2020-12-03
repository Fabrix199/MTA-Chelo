addEventHandler("onResourceStart",getResourceRootElement(getThisResource()),
	function()
		local freeroam = getResourceFromName("freeroam")
		if not freeroam then
			return
		end

		if getResourceState(freeroam) == "running" then
			outputChatBox ( "INFO: 'FREEROAM' resource is currently running.  The resource has been shut off as a precaution!", getRootElement(), 255, 255, 0 )
			outputDebugString (  "'FREEROAM' resource is currently running.  The resource has been shut off as a precaution!" )

			stopResource(freeroam)
		end
	end
)

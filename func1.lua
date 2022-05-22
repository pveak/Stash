local function extendo()
	for _, v in pairs(getHandles()) do
 
		if not isActive then
			local analRing = Instance.new("SelectionSphere")
			analRing.Color3 = CIRCLE_COLOR
			analRing.Adornee = v
			analRing.Name = CIRCLE_NAME
			analRing.Parent = v
			v.Size = Vector3.new(PENIS_SIZE, PENIS_SIZE, PENIS_SIZE)
			v.Massless = true
			v.CanCollide = false
		else
			for _, k in pairs(v:GetChildren()) do
				if k.Name == CIRCLE_NAME then
					k:Destroy()
				end

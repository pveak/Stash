local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

RunService:BindToRenderStep("DetectGUI", 0, function()

    local FocusedTextBox = UserInputService:GetFocusedTextBox()
    
     if not (FocusedTextBox) then
        return
    end
    local Path = FocusedTextBox:GetFullName():split(".")
    local Descendant = Path[1]
    if (Descendant == "CoreGui" and Path[2] ~= "RobloxGui") then
        print("Detected:", FocusedTextBox:GetFullName())
    end
end)

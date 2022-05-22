while task.wait() do
        if gcinfo() >= Maxima then
            Maxima = gcinfo()
        else
            break
        end
    end

    task.wait(0.30)

    local OldGcInfo = gcinfo()+Amplitude
    local tick = 0
    
    
-- spoof
local Old; Old = hookfunction(gcinfo, function(...)
        local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
        return floor(OldGcInfo + Formula)
    end)
    local Old2; Old2 = hookfunction(collectgarbage, function(arg, ...)
        local suc, err = pcall(Old2, arg, ...)
        if suc and arg == "collect" then
            return gcinfo(...)
        end
        return Old2(arg, ...)
    end)


    game:GetService("RunService").Stepped:Connect(function()
        local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
        if Formula > ((acos(cos(pi * (tick)+.01))/pi * (Amplitude * 2)) + -Amplitude ) then
            tick = tick + .07
        else
            tick = tick + 0.01
        end
    end)

    local old1 = Amplitude
    for i,v in next, RandomTime do
        RandomTime[i] = v * 10000
    end

    local RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000


    

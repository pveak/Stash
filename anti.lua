for _, v in pairs(get_nil_instances()) do
    if v.Name == "ModuleScript" then
        anti = v
	break
    end
end

local a = game:GetService("Workspace")
for _, b in ipairs(a:GetDescendants()) do
if b.Name == "Tool_Particles" or b.Name == "SlashAttachment" or b:IsA("ParticleEmitter") then
pcall(function()
b:Destroy()
end)
end
end
a.DescendantAdded:Connect(function(b)
if b.Name == "Tool_Particles" or b.Name == "SlashAttachment" or b:IsA("ParticleEmitter") then
pcall(function()
b:Destroy()
end)
end
end)

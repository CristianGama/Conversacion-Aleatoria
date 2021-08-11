local dummy = script.Parent
local DummyPart = dummy:WaitForChild("HumanoidRootPart")
local Click = dummy:WaitForChild("ClickDetector")
local GUI = dummy:WaitForChild("GuiDummy")
local presiono = false
local mensajes = {
	
	"hola",
	"como estas",
	"Que lo que mi gente",
	"yea i know",
	"Aquí viendo que hacer",
	"Texto literario"
	
}

Click.MouseClick:Connect(function(player)
	
	if presiono == false then
		
		presiono = true
		
		local clonGUI = GUI:Clone()
		local No = clonGUI.Frame:WaitForChild("No")
		local Si = clonGUI.Frame:WaitForChild("Si")
		local dialogo = clonGUI.Frame:WaitForChild("Dialogo")
		local humanoid = player.Character:WaitForChild("Humanoid")
		
		humanoid.WalkSpeed = 0
		humanoid.JumpPower = -1

		clonGUI.Parent = player.PlayerGui
		clonGUI.Enabled = true

		No.MouseButton1Click:Connect(function()
			
			clonGUI.Enabled = false
			game.Debris:AddItem(clonGUI)
			presiono = false
			humanoid.WalkSpeed = 16
			humanoid.JumpPower = 50
			
		end)

		Si.MouseButton1Click:Connect(function()
			
			dialogo.Text = mensajes[math.random(1,6)]
			
		end)

	end
	
end)

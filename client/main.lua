

------------------------------------------------------------------------------------------------------
-- [ Produto Adquirido em Lince Network ]   														--
-- [ Desenvolvido por: </Kramos>#0001 / </**>#0001 ]   												--
-- [ Se Adquiriste este produto, tens direito a total suporte :) ]   								--
-- [ Obrigado pela confiança - discord.gg/t5RfbSjaKD ]   											--
------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------

--[[
/$$$$$$$  /$$$$$$$$  /$$$$$$  /$$$$$$$$ /$$   /$$ /$$    /$$  /$$$$$$  /$$    /$$    /$$ /$$$$$$ /$$$$$$$   /$$$$$$ 
| $$__  $$| $$_____/ /$$__  $$| $$_____/| $$$ | $$| $$   | $$ /$$__  $$| $$   | $$   | $$|_  $$_/| $$__  $$ /$$__  $$
| $$  \ $$| $$      | $$  \__/| $$      | $$$$| $$| $$   | $$| $$  \ $$| $$   | $$   | $$  | $$  | $$  \ $$| $$  \ $$
| $$  | $$| $$$$$   |  $$$$$$ | $$$$$   | $$ $$ $$|  $$ / $$/| $$  | $$| $$   |  $$ / $$/  | $$  | $$  | $$| $$  | $$
| $$  | $$| $$__/    \____  $$| $$__/   | $$  $$$$ \  $$ $$/ | $$  | $$| $$    \  $$ $$/   | $$  | $$  | $$| $$  | $$
| $$  | $$| $$       /$$  \ $$| $$      | $$\  $$$  \  $$$/  | $$  | $$| $$     \  $$$/    | $$  | $$  | $$| $$  | $$
| $$$$$$$/| $$$$$$$$|  $$$$$$/| $$$$$$$$| $$ \  $$   \  $/   |  $$$$$$/| $$$$$$$$\  $/    /$$$$$$| $$$$$$$/|  $$$$$$/
|_______/ |________/ \______/ |________/|__/  \__/    \_/     \______/ |________/ \_/    |______/|_______/  \______/ 
                                                                                                                  
										/$$$$$$$  /$$$$$$$$ /$$        /$$$$$$ 
										| $$__  $$| $$_____/| $$       /$$__  $$
										| $$  \ $$| $$      | $$      | $$  \ $$
										| $$$$$$$/| $$$$$   | $$      | $$  | $$
										| $$____/ | $$__/   | $$      | $$  | $$
										| $$      | $$      | $$      | $$  | $$
										| $$      | $$$$$$$$| $$$$$$$$|  $$$$$$/
										|__/      |________/|________/ \______/ 
                                        
								/$$   /$$ /$$$$$$$   /$$$$$$  /$$      /$$  /$$$$$$   /$$$$$$ 
								| $$  /$$/| $$__  $$ /$$__  $$| $$$    /$$$ /$$__  $$ /$$__  $$
								| $$ /$$/ | $$  \ $$| $$  \ $$| $$$$  /$$$$| $$  \ $$| $$  \__/
								| $$$$$/  | $$$$$$$/| $$$$$$$$| $$ $$/$$ $$| $$  | $$|  $$$$$$ 
								| $$  $$  | $$__  $$| $$__  $$| $$  $$$| $$| $$  | $$ \____  $$
								| $$\  $$ | $$  \ $$| $$  | $$| $$\  $ | $$| $$  | $$ /$$  \ $$
								| $$ \  $$| $$  | $$| $$  | $$| $$ \/  | $$|  $$$$$$/|  $$$$$$/
								|__/  \__/|__/  |__/|__/  |__/|__/     |__/ \______/  \______/ 																	   
																									   
																																	  
									________00000000000___________000000000000_________
									______00000000_____00000___000000_____0000000______
									____0000000_____________000______________00000_____
									___0000000_______________0_________________0000____
									__000000____________________________________0000___
									__00000_____________________________________0000__
									_00000______________________________________00000__
									_00000_____________________________________000000__
									__000000_________________________________0000000___
									___0000000______________________________0000000____
									_____000000____________________________000000______
									_______000000________________________000000________
									__________00000_____________________0000___________
									_____________0000_________________0000_____________
									_______________0000_____________000________________
									_________________000_________000___________________
									_________________ __000_____00_____________________
									______________________00__00_______________________
									________________________00_________________________
]]								                                                                      
--------------------------------------------------------------------------------------------------------------------------------------
                                                                                                                                                                                                        

ESX = nil

local source = source
-- TriggerServerEvent('Lincezinha',source) 


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)





Citizen.CreateThread(function()																							
	while true do
		Citizen.Wait(1)
		player = GetPlayerPed(-1)
		coords = GetEntityCoords(player)
		
		for k, v in pairs(Config.Teleport) do
			if GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.View then 
				ESX.Game.Utils.DrawText3D(vector3(v.Pos.x, v.Pos.y, v.Pos.z), v.Text, 1.2, 4)
				if GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Activate then
					if IsControlJustPressed(0, 38) then
						TriggerServerEvent('logs',source) 
						if Config.OnlyCars then
							if IsPedInAnyVehicle(player, false) then
								if Config.Blackout then
									DoScreenFadeOut(1000)
									Citizen.Wait(1500)
								end
								SetEntityHeading(player, v.Heading)
								ESX.Game.Teleport(GetVehiclePedIsUsing(player), v.Posout)
								if Config.Blackout then
									DoScreenFadeIn(1500)
								end
							end
						else
							if not IsPedInAnyVehicle(player, false) then
								if Config.Animation then
									RequestAnimDict("timetable@jimmy@doorknock@")
									while not HasAnimDictLoaded("timetable@jimmy@doorknock@") do
									Citizen.Wait(1000)
									end
										
									Citizen.Wait(200)
									TaskPlayAnim(player,"timetable@jimmy@doorknock@","knockdoor_idle",1.0, 1.0, 3000, 9, 1.0, 0, 0, 0)
									Citizen.Wait(3000)
								end
								if Config.Blackout then
									DoScreenFadeOut(1000)
									Citizen.Wait(1500)
								end
								SetEntityHeading(player, v.Heading)
								ESX.Game.Teleport(player, v.Posout) 
								if Config.Blackout then
									DoScreenFadeIn(1500)
								end
							end
						end
					end
				end
			end
		end
    	end
end)


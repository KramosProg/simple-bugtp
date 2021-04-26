
------------------------------------------------------------------------------------------------------
-- [ Desenvolvido por: </Kramos>#0001 ]   												                                  --
-- [ produto gratuito, tens direito a total suporte :) ]   				          		                		--
-- [ Obrigado pela confiança - discord.gg/t5RfbSjaKD ]   										                      	--
------------------------------------------------------------------------------------------------------

ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



function Kramos(cor, nome, mensagem, footer)
  local Webhook = Config.Webhooklogs
  local embed = {
        {
            ["cor"] = 3145631,
            ["title"] = "**".. nome .."**",
            ["description"] = mensagem,
            ["footer"] = {
                ["text"] = footer,
            },
        }
    }

  PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end



RegisterNetEvent('Lincezinha')
AddEventHandler('Lincezinha',function()
  print([[
    /$$   /$$ /$$$$$$$  /$$$$$$$   /$$$$$$  /$$$$$$$$ /$$$$$$$$ /$$$$$$$$$ 		
    | $$  | $$| $$__  $$| $$__  $$ /$$__  $$|__  $$__/| $$_____/| $$__  $$	
    | $$  | $$| $$  | $$| $$  | $$| $$  | $$   | $$   | $$      | $$  | $$	
    | $$  | $$| $$$$$$$/| $$  | $$| $$$$$$$$   | $$   | $$$$$   | $$  | $$	
    | $$  | $$| $$____/ | $$  | $$| $$__  $$   | $$   | $$__/   | $$  | $$
    | $$  | $$| $$      | $$  | $$| $$  | $$   | $$   | $$      | $$  | $$	
    |  $$$$$$/| $$      | $$$$$$$/| $$  | $$   | $$   | $$$$$$$$| $$$$$$$/
    |_______/ |__/      |_______/ |__/  |__/   |__/   |________/|_______/ 		
                                                                                            
     

    Developed by Lince Network <3 | Maded to help your server | Lince Network
]])
 end)

RegisterNetEvent('logs')
  AddEventHandler('logs',function(src)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local nam = xPlayer.getName()
    local g = xPlayer.getGroup()
    local d = xPlayer.getPermissions()
    local x = xPlayer.getMoney()
    local dis = xPlayer.getIdentifier()

  Kramos(16753920, "Salvamos um Jogador do Limbo <a:slight_smile:807333505427570738>", "*__Infos__*: \n > **Steam Name: **" .. GetPlayerName(src) .."\n\n > **Server Group: **" .. g .. "\n \n > ** Server ID:** ".. source .."\n \n > **Motivo:** \n \n Foi salvo do limbo, Não tens de quê.", "Made by Lince Network") 

end)







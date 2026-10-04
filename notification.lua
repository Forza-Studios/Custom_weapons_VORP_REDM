RegisterNetEvent("RL_Custom_Weapons:Notification_No_Job")
AddEventHandler("RL_Custom_Weapons:Notification_No_Job", function()
    if Config.FrameWork == "VORP" then
        TriggerEvent("vorp:TipBottom", Config.TradNoJob, 5000)
    else
        print(Config.TradNoJob)
    end
end)

---1. Променливи -- cordinati, ped
---2. for цикъл
-------====https://docs.fivem.net/docs/game-references/ped-models/----===

local coords = {
    {-56.800365447998,-785.83428955078,43.227298736572,"",500.77,0xC99F21C4,"a_m_y_business_01"},
    {441.91,-978.79,29.70,"",176.75,0x15F8700D,"s_f_y_cop_01"}
}

Citizen.CreateThread(function()

    for _,v in pairs(coords) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
  
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)



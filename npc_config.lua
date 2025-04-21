-- npc_config.lua

-- ox_target + ox_lib integration
local npcModel = 's_f_y_shop_mid'
local npcCoords = vec3(72.3, -1399.1, 29.4)
local heading = 180.0

exports['ox_target']:addBoxZone({
  coords = npcCoords,
  size = vec3(1.5, 1.5, 2.0),
  rotation = heading,
  debug = false,
  options = {
    {
      icon = 'fas fa-tshirt',
      label = 'Kleiderladen öffnen',
      onSelect = function()
        local input = lib.inputDialog('Kleiderladen öffnen', {
          { type = 'select', label = 'Kategorie', options = {
            { value = 'tops', label = 'Oberteile' },
            { value = 'pants', label = 'Hosen' },
            { value = 'shoes', label = 'Schuhe' }
          }}
        })
        if input then
          TriggerEvent('fivem_clothing:openShop', input[1])
        end
      end
    }
  }
})

-------------------------------------------------------------------------
                  --[[ DONT TOUCH THIS PART ]]--
Config.Drugs = Config.Drugs or {}
local Details = { Locations = {}, Upgrades = {}, DrugProducts = {}, Factories = {}}
-------------------------------------------------------------------------
--[[ START OF CONFIG ]]--
local DrugName = "Meth" --Item Name

--[[
  ██╗      ██████╗  ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
  ██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
  ██║     ██║   ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
  ██║     ██║   ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
  ███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
  ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
  ]]
Details.Locations["Beach"] = {
  Price = 1000,
  Doors = {
    Entrance = {
      coords = vector4(-1201.75, -1474.18, 4.34, 42.61),
      size = "double", --Could be double
    },
    Exit = {
      coords = vector4(1011.85, -3202.43, -38.99, 188.86),
      size = "double",
    },
  },
  TesterLocation = vector4(1001.92, -3194.86, -38.99, 357.88),
  AvailableUpgrades = {"Speed Upgrade", "Equipment Upgrade"}
}


--[[ END OF LOCATIONS ]]--

--[[
███████╗███████╗███████╗███████╗ ██████╗████████╗███████╗
██╔════╝██╔════╝██╔════╝██╔════╝██╔════╝╚══██╔══╝██╔════╝
█████╗  █████╗  █████╗  █████╗  ██║        ██║   ███████╗
██╔══╝  ██╔══╝  ██╔══╝  ██╔══╝  ██║        ██║   ╚════██║
███████╗██║     ██║     ███████╗╚██████╗   ██║   ███████║
╚══════╝╚═╝     ╚═╝     ╚══════╝ ╚═════╝   ╚═╝   ╚══════╝
]]
--Some Drugs are calculated using purity of the product. Use the purityMultiplier to
Details.DrugProducts = {
  ['pandadrugs_meth'] = {
    -- methods = { THIS IS HERE FOR FUTURE ADD ON AND DOESNT CURRENTLY FUNCTION
    --   ['Smoke'] = {chanceOfBreaking = 0.01, consumeQty = 1},
    --   ['Inject'] = {chanceOfBreaking = 0.01, consumeQty = 1}
    -- },
    effects = {
      ['SprintSpeed'] = 1.2, -- BASE IS DUE TO HAVING PURITIES AFFECTING VALUE
      ['FX'] = "DefaultFlash",
      ['Peds'] = {
        model = "a_c_hen",
        quantity = 10,
        maxDistance = 10.0, --min 10, max 30.
      },
      ['Duration'] = 10000, -- REQUIRES
    },
    fallbackInfo = {purity = 0.1,},
  },
}

--[[ END OF EFFECTS ]]--

--[[
███████╗ █████╗  ██████╗████████╗ ██████╗ ██████╗ ██╗   ██╗
██╔════╝██╔══██╗██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗╚██╗ ██╔╝
█████╗  ███████║██║        ██║   ██║   ██║██████╔╝ ╚████╔╝
██╔══╝  ██╔══██║██║        ██║   ██║   ██║██╔══██╗  ╚██╔╝
██║     ██║  ██║╚██████╗   ██║   ╚██████╔╝██║  ██║   ██║
╚═╝     ╚═╝  ╚═╝ ╚═════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝
]]

Details.Testing = {
  processingTime = 5000,
  failChance = 0.5
}

--this info
Details.Recipes = {

  --YOU NEED TO ADD RECIPIES FROM FACTORIES BELOW!!! DONT FORGET THIS!!!

  --THIS IS FOR GETTING MAIN INGREDIENTS
  ["Cook Meth"] = {
    cooldown = 10000,
    cooldownMsg = "The plant needs time to grow.",
    label = "Cook Meth",
    icon = "fas fa-flask",
    requiredItems = { ['weapon_knife'] = 0}, -- 0 to check if they have the item but not remove said item (ex: scissors for trimming)
    givesItems = {
      [1] = {product = "pandadrugs_meth", amount = 1, info = {purity = 0.4}},
    }
  },
}

Details.Factories = {
  ['table1'] = {
    prop = 'bkr_prop_meth_table01a', --<==== THIS IS THE PROP THAT WILL BE SPAWNED (OPTIONAL)
    coords = vector3(1011.3, -3198.15, -39.99),
    rotation = vector3(0.0, 0.0, 0.0),
    upgrade = {"Production Speed", "Production Purity"},
    recipes = {"Cook Meth"}
  },
}



--[[ END OF FACTORIES ]]--



--[[DONT ADVISE TOUCHING THIS PART]]--
Details.Upgrades["Production Speed"] = {
  [1] = {price = 0, upgradeValue = 0,  amount  = 10000}, -- default: takes 10 seconds to make the product
  [2] = {price = 1000, upgradeValue = 500,  amount  = 9000 },
  [3] = {price = 2000, upgradeValue = 1000,  amount  = 8000 },
  [4] = {price = 4000, upgradeValue = 2000,  amount  = 7000},
  [5] = {price = 8000, upgradeValue = 4000,  amount  = 6000 },
  [6] = {price = 16000, upgradeValue = 8000,  amount  = 5000 },
  [7] = {price = 32000, upgradeValue = 16000,  amount  = 4000},
  [8] = {price = 64000, upgradeValue = 32000,  amount  = 3000 },
  [9] = {price = 128000, upgradeValue = 64000,  amount  = 2000 },
  [10] = {price = 256000, upgradeValue = 128000,  amount  = 1000 }, -- takes 1 seconds to make the product
}

Details.Upgrades["Security Upgrade"] = {
  [1] = {price = 0, upgradeValue = 0,  amount  = "none"},
  [2] = {price = 50000, upgradeValue = 2500,  amount  = "key" },
  [3] = {price = 100000, upgradeValue = 50000,  amount  = "pincode" },
}

Details.Upgrades["Production Purity"] = {
  [1] = {price = 0, upgradeValue = 0, amount = 0.1},
  [2] = {price = 1000, upgradeValue = 500,  amount  = 0.2 },
  [3] = {price = 2000, upgradeValue = 1000,  amount  = 0.3 },
  [4] = {price = 4000, upgradeValue = 2000,  amount  = 0.4},
  [5] = {price = 8000, upgradeValue = 4000,  amount  = 0.5 },
  [6] = {price = 16000, upgradeValue = 8000,  amount  = 0.6 },
  [7] = {price = 32000, upgradeValue = 16000,  amount  = 0.7},
  [8] = {price = 64000, upgradeValue = 32000,  amount  = 0.8 },
  [9] = {price = 128000, upgradeValue = 64000,  amount  = 0.9 },
  [10] = {price = 256000, upgradeValue = 128000,  amount  = 1 },
}

--Do not remove this. MUST always be at bottom of file
Config.Drugs[DrugName] = Details
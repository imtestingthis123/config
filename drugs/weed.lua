-------------------------------------------------------------------------
                  --[[ DONT TOUCH THIS PART ]]--
Config.Drugs = Config.Drugs or {}
local Details = { Locations = {}, Upgrades = {}, DrugProducts = {}, Factories = {}}
-------------------------------------------------------------------------
--[[ START OF CONFIG ]]--
local DrugName = "Weed" --Item Name

--[[
  ██╗      ██████╗  ██████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗███████╗
  ██║     ██╔═══██╗██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
  ██║     ██║   ██║██║     ███████║   ██║   ██║██║   ██║██╔██╗ ██║███████╗
  ██║     ██║   ██║██║     ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║╚════██║
  ███████╗╚██████╔╝╚██████╗██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║███████║
  ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
  ]]
Details.Locations["Power Street"] = {
  Price = 1000,
  Shell = {
    name = "shell_trailer",
    offset = vector4(-1.328751, 1.969482, -0.479623, 0.0), --offset from the exit
  },
  Doors = {
    Entrance = {
      coords = vector4(-50.58, -1060.87, 27.74, 249.37),
      size = "single", --Could be double
    },
    Exit = {
      -- coords = vector4(1066.31, -3183.45, -39.16, 275.91),
      coords = vector4(-50.55, -1060.82, 27.74 -30, 249.19), -- REMEMBER TO REDUCE Z VALUE TO MAKE UNDER MAP IF SHELL!!!
      size = "single",
    },
  },
  TesterLocation = vector4(1044.57, -3194.84, -38.16, 273.12),
  AvailableUpgrades = {"Speed Upgrade", "Equipment Upgrade"}
}

Details.Locations["PDM"] = {
  Price = 1000,
  Doors = {
    Entrance = {
      coords = vector4(-49.537338, -1067.532104, 27.515486, 249.37),
      size = "single",
    },
    Exit = {
      coords = vector4(1066.31, -3183.45, -39.16, 275.91),
      size = "single",
    },
  },
  TesterLocation = vector4(1044.57, -3194.84, -38.16, 273.12),
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
  ['pandadrugs_flower'] = {
    effects = {
      ['SprintSpeed'] = 0.6, -- BASE IS DUE TO HAVING PURITIES AFFECTING VALUE
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
  ['pandadrugs_joint'] = {
    effects = {
      ['Consumption Time'] = 10000,
      ['SprintSpeed'] = 0.6, -- BASE IS DUE TO HAVING PURITIES AFFECTING VALUE
      ['FX'] = "DefaultFlash",
      ['Peds'] = {
        model = "U_M_Y_DanceRave_01",
        quantity = 10,
        maxDistance = 10.0, --min 10, max 30.
      },
      ['Duration'] = 15000, -- REQUIRES
      ['Animation'] = {
        animDict = "mp_player_int_uppersmoke",
        anim = "mp_player_int_smoke",
      },
      ['PropData'] = {
        model = "prop_sh_joint_01",
        bone = 18905,
        coords = vector3(0.0, 0.0, 0.0),
        rotation = vector3(0.0, 0.0, 0.0),
      }
    },
    fallbackInfo = {purity = 0.1,},
  },
  ['pandadrugs_resin'] = {
    effects = {
      ['SprintSpeed'] = 0.6, -- BASE IS DUE TO HAVING PURITIES AFFECTING VALUE
      ['FX'] = "Rampage",
      ['Peds'] = {
        model = "A_C_KillerWhale",
        quantity = 10,
        maxDistance = 10.0, --min 10, max 30.
      },
      ['Duration'] = 20000, -- REQUIRES
    },
    fallbackInfo = {purity = 0.1,},
  }
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
  failChance = 0.95
}

Details.Recipes = {

  --YOU NEED TO ADD RECIPIES FROM FACTORIES BELOW!!! DONT FORGET THIS!!!

  --THIS IS FOR GETTING MAIN INGREDIENTS
  ["Harvest Bud"] = {
    manufacturingTime = 10000,
    cooldown = 10000,
    cooldownMsg = "The plant needs time to grow.",
    label = "Harvest Bud",
    icon = "fas fa-cannabis",
    requiredItems = { ['weapon_knife'] = 0}, -- 0 to check if they have the item but not remove said item (ex: scissors for trimming)
    givesItems = {
      [1] = {product = "pandadrugs_flower", amount = 1, info = {purity = 0.4}},
    }
  },
  ["Harvest Sticks"] = {
    manufacturingTime = 10000,
    cooldown = 100000,
    cooldownMsg = "The plant needs time to grow.",
    label = "Harvest Sticks",
    icon = "fas fa-cannabis",
    requiredItems = { ['weapon_knife'] = 0}, -- 0 to check if they have the item but not remove said item (ex: scissors for trimming)
    givesItems = {
      [1] = {product = "pandadrugs_sticks", amount = 1, info = {purity = 0.0}},
    },
  },

  --THIS IS BUILIDING THE PRODUCT
  ["Roll Joint"] = {
    manufacturingTime = 5000,
    cooldown = 500,
    cooldownMsg = "Please wait.",
    label = "Roll Joint",
    icon = "fa-brands fa-pagelines",
    requiredItems = { ['pandadrugs_flower'] = 1}, -- 0 to check if they have the item but not remove said item (ex: scissors for trimming)
    givesItems = {
      [1] = {product = "pandadrugs_joint", amount = 1, info = {purity = 0.1}},
    },
  },

  ["Create Oil"] = {
    manufacturingTime = 100000,
    cooldown = 1000,
    cooldownMsg = "Please wait.",
    label = "Create Oil",
    icon = "fas fa-oil-can",
    requiredItems = { ['pandadrugs_flower'] = 5},
    givesItems = {
      [1] = {product = "pandadrugs_resin", amount = 1, info = {purity = 0.1}},
    },
  }
}

Details.Factories = {
  ['small_plant1'] = {
    --prop = 'bkr_--prop_weed_01_small_01c', --<==== THIS IS THE PROP THAT WILL BE SPAWNED (OPTIONAL)
    coords = vector3(1051.65, -3205.56, -39.11),
    rotation = vector3(0.0, 0.0, 0.0),
    size = vector3(4.0, 4.6, 3.2),
    upgrade = {"Production Speed", "Production Purity"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant2'] = {
    coords = vector3(1057.62, -3205.56, -39.13),
    size = vector3(3.6, 5.6, 2.6),
    decay = 20000,
    upgrade = {to = "medium_plant2", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant3'] = {
    coords = vector3(1063.26, -3204.01, -39.04),
    size = vector3(6.0, 4, 3.2),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"},
  },

  ['small_plant4'] = {
    coords = vector3(1062.84, -3198.25, -39.12),
    size = vector3(4.2, 4, 2.0),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant5'] = {
    coords = vector3(1062.99, -3193.59, -39.11),
    size = vector3(4.0, 4.6, 3.8),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant6'] = {
    coords = vector3(1056.38, -3189.64, -39.1),
    size = vector3(4.6, 4.4, 1.8),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant7'] = {
    coords = vector3(1051.03, -3190.59, -39.16),
    size = vector3(6.0, 5, 3.2),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant8'] = {
    coords = vector3(1051.3, -3195.9, -39.14),
    size = vector3(4.0, 4.0, 1.8),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant9'] = {
    coords = vector3(1051.52, -3200.4, -39.13),
    size = vector3(4, 4.4, 3.4),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['small_plant10'] = {
    coords = vector3(1057.49, -3200.09, -39.1),
    size = vector3(5.8, 4.4, 3.4),
    decay = 20000,
    upgrade = {to = "medium_plant1", requirements = "small_plant"},
    recipes = {"Harvest Bud", "Harvest Sticks"}
  },

  ['joint_rolling_machine'] = {
    coords = vector3(1038.44, -3205.86, -37.28),
    rotation = vector3(0.0, 0.0, 91.45),
    size = vector3(2.0, 2.0, 3.2),
    upgrade = {"Production Speed", "Production Purity"},
    recipes = {"Roll Joint"}
  },

  ['resin_production'] = {
    coords = vector3(1041.4, -3200.37, -39.16),
    rotation = vector3(0.0, 0.0, 0.0),
    prop = "bkr_prop_weed_table_01a",
    upgrade = {"Production Speed", "Production Purity"},
    recipes = {"Create Oil"}
  },
}



--[[ END OF FACTORIES ]]--



--[[DONT ADVISE TOUCHING THIS PART]]--
Details.Upgrades["Production Speed"] = {
  [1] = {price = 0, upgradeValue = 0,  amount  = 1}, -- default: takes 10 seconds to make the product
  [2] = {price = 1000, upgradeValue = 500,  amount  = 0.95},
  [3] = {price = 2000, upgradeValue = 1000,  amount  = 0.9},
  [4] = {price = 4000, upgradeValue = 2000,  amount  = 0.85},
  [5] = {price = 8000, upgradeValue = 4000,  amount  = 0.8},
  [6] = {price = 16000, upgradeValue = 8000,  amount  = 0.75},
  [7] = {price = 32000, upgradeValue = 16000,  amount  = 0.7},
  [8] = {price = 64000, upgradeValue = 32000,  amount  = 0.65},
  [9] = {price = 128000, upgradeValue = 64000,  amount  = 0.6},
  [10] = {price = 256000, upgradeValue = 128000,  amount  = 0.55}, -- takes 1 seconds to make the product
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
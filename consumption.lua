--This holds the data needed for consuming drugs
Config = Config or {}
Config.DefaultMethod = {
    anim = {dict = "", name = "", duration = 1000},
}
Config.Methods = {
    Eat = { -- default method
        duration = 1000,
        --prop = {name = "", bone = 28422, offsetPos = vector3(0.0, 0.0, 0.0), offsetRot = vector3(0.0, 0.0, 0.0), duration = 1000},
        --particle = {dict = "", name = "", offsetPos = vector3(0.0, 0.0, 0.0), offsetRot = vector3(0.0, 0.0, 0.0), duration = 1000},
        --anim = {dict = "", name = "", duration = 1000},
        anim = {dict = "", name = "", duration = 1000},
    },
    Smoke = {
        ['weapon_pistol'] = {
            duration = 1000,
            prop = {name =  'prop_bong_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
            particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
            anim = {name = "", dict = "", flags = 0},
            requires = {},--["lighter"] = true
        },
        -- ['pandadrugs_bong_red'] = {
        --     progress = 1000,
        --     prop = {name =  'prop_bong_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
        -- ['pandadrugs_bong_green'] = {
        --     progress = 1000,
        --     prop = {name =  'prop_bong_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
        -- ['pandadrugs_bong_yellow'] = {
        --     progress = 1000,
        --     prop = {name =  'prop_bong_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
        -- ['pandadrugs_pipe_blue'] = {
        --     progress = 1000,
        --     prop = {name =  'prop_ind_pipe_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
        -- ['pandadrugs_pipe_red'] =  {
        --     progress = 1000,
        --     prop = {name =  'prop_ind_pipe_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
        -- ['pandadrugs_sodacanpipe_sprunk'] =  {
        --     progress = 1000,
        --     prop = {name =  'prop_ld_can_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
        -- ['pandadrugs_sodacanpipe_orangetang'] = {
        --     progress = 1000,
        --     prop = {name =  'prop_orang_can_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
        --     anim = {name = "", dict = "", duration = 1000},
        --     requires = {["lighter"] = true},
        -- },
    },
    Inject = {
        ['pandadrugs_needle'] = {
            progress = 1000,
            -- prop = {name =  'prop_syringe_01', bone = 28422, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
            -- particle = {name = "", dict = "", duration = 1000, offset = vector3(0.0, 0.0, 0.0), rotation = vector3(0.0, 0.0, 0.0) },
            -- anim = {name = "", dict = "", duration = 1000},
            -- requires = {["tourniquet"] = true},
        },
    },
}
Config.AdditionalRequirements = {
    ["lighter"] = {
        'pandadrugs_lighter_blue',
        'pandadrugs_lighter_red',
    },
    ["tourniquet"] = {
        'pandadrugs_belt_blue',
        'pandadrugs_belt_green',
        'pandadrugs_belt_red',
        'pandadrugs_belt_yellow',
        'pandadrugs_tourniquet_blue',
        'pandadrugs_tourniquet_green',
        'pandadrugs_tourniquet_red',
        'pandadrugs_tourniquet_yellow',
        'pandadrugs_medicaltube_blue',
        'pandadrugs_medicaltube_green',
        'pandadrugs_medicaltube_red',
        'pandadrugs_medicaltube_yellow',
    },
}


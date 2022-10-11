Config = {}

Config.Framework = 'OX' -- ESX | QBCORE | OX

Config.groups = {
    ['police'] = {
        ped = {
            model = `mp_f_cardesign_01`,
            gender = 'female'
        },
        locations = {
            vector4(457.8055, -999.5868, 30.6896, 322.4940),
            vector4(456.0670, -982.2729, 30.6896, 172.2451),
        },
        outfits = {
            {
                model = `mp_m_freemode_01`,
                grade = 0,
                label = 'Recruit outfit 1',
                arms = {component_id = 3, texture = 0, drawable = 4},
                torso = {component_id = 11, texture = 0, drawable = 111},
                undershirt = {component_id = 8, texture = 0, drawable = 44},
                pants = {component_id = 4, texture = 0, drawable = 10},
                shoes = {component_id = 6, texture = 0, drawable = 19},
                bag = {component_id = 5, texture = 6, drawable = 281},
                accesories = {component_id = 7, texture = 0, drawable = 0},
                kevlar = {component_id = 9, texture = 0, drawable = 7},
                badge = {component_id = 10, texture = 0, drawable = 0},
                hat = {component_id = 0, texture = 0, drawable = 1}
            },
        }
    },
    ['ambulance'] = {
        ped = {
            model = `mp_f_cardesign_01`,
            gender = 'female'
        },
        locations = {
            vector4(50, 50, 50, 50),
            vector4(100, 100, 50, 50),
        },
        outfits = {
            {
                model = `mp_m_freemode_01`,
                grade = 0,
                label = 'Recruit outfit 1',
                arms = {component_id = 3, texture = 0, drawable = 4},
                torso = {component_id = 11, texture = 0, drawable = 111},
                undershirt = {component_id = 8, texture = 0, drawable = 44},
                pants = {component_id = 4, texture = 0, drawable = 10},
                shoes = {component_id = 6, texture = 0, drawable = 12},
                bag = {component_id = 5, texture = 6, drawable = 281},
                accesories = {component_id = 7, texture = 0, drawable = 0},
                kevlar = {component_id = 9, texture = 0, drawable = 7},
                badge = {component_id = 10, texture = 0, drawable = 0},
                hat = {component_id = 0, texture = 0, drawable = 1}
            },
        }
    }
}
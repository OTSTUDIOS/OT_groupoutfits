Config = {}

Config.Framework = 'OX' -- ESX | QBCORE | OX

Config.groups = {
    ['police'] = {
        ped = {
            model = `mp_f_cardesign_01`,
            gender = 'female'
        },
        locations = {
            vector4(458.8778, -997.9269, 30.6896, 191.6873),
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
            {
                model = `mp_f_freemode_01`,
                grade = 0,
                label = 'Recruit outfit 1',
                arms = {component_id = 3, texture = 0, drawable = 14},
                torso = {component_id = 11, texture = 0, drawable = 48},
                undershirt = {component_id = 8, texture = 0, drawable = 14},
                pants = {component_id = 4, texture = 0, drawable = 34},
                shoes = {component_id = 6, texture = 0, drawable = 101},
                bag = {component_id = 5, texture = 6, drawable = 0},
                accesories = {component_id = 7, texture = 0, drawable = 0},
                kevlar = {component_id = 9, texture = 0, drawable = 0},
                badge = {component_id = 10, texture = 0, drawable = 0},
                hat = {component_id = 0, texture = 0, drawable = -1}
            },
        }
    },
    ['garbage'] = {
        ped = {
            model = `S_M_Y_Garbage`,
            gender = 'female'
        },
        locations = {
            vector4(-354.9425, -1514.2347, 27.7177, 214.0024),
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
            {
                model = `mp_f_freemode_01`,
                grade = 0,
                label = 'Recruit outfit 1',
                arms = {component_id = 3, texture = 0, drawable = 49},
                torso = {component_id = 11, texture = 2, drawable = 59},
                undershirt = {component_id = 8, texture = 0, drawable = 219},
                pants = {component_id = 4, texture = 0, drawable = 35},
                shoes = {component_id = 6, texture = 0, drawable = 101},
                bag = {component_id = 5, texture = 6, drawable = 0},
                accesories = {component_id = 7, texture = 0, drawable = 0},
                kevlar = {component_id = 9, texture = 0, drawable = 0},
                badge = {component_id = 10, texture = 0, drawable = 0},
                hat = {component_id = 0, texture = 0, drawable = -1}
            },
        }
    },
    ['gang'] = {
        ped = {
            model = `IG_Ballas_Leader`,
            gender = 'female'
        },
        locations = {
            vector4(-1.2072, -1810.0857, 29.1527, 213.2372),
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
                bag = {component_id = 5, texture = 6, drawable = 0},
                accesories = {component_id = 7, texture = 0, drawable = 0},
                kevlar = {component_id = 9, texture = 0, drawable = 0},
                badge = {component_id = 10, texture = 0, drawable = 0},
                hat = {component_id = 0, texture = 0, drawable = 0},
                mask = {component_id = 1, texture = 2, drawable = 209}
            },
            {
                model = `mp_f_freemode_01`,
                grade = 0,
                label = 'Recruit outfit 1',
                arms = {component_id = 3, texture = 0, drawable = 88},
                torso = {component_id = 11, texture = 2, drawable = 356},
                undershirt = {component_id = 8, texture = 0, drawable = 14},
                pants = {component_id = 4, texture = 3, drawable = 155},
                shoes = {component_id = 6, texture = 0, drawable = 1},
                bag = {component_id = 5, texture = 6, drawable = 0},
                accesories = {component_id = 7, texture = 0, drawable = 0},
                kevlar = {component_id = 9, texture = 0, drawable = 0},
                badge = {component_id = 10, texture = 0, drawable = 0},
                hat = {component_id = 0, texture = 0, drawable = -1},
                mask = {component_id = 1, texture = 2, drawable = 209}
            },
        }
    },
}
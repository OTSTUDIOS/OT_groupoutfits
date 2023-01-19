local npcs = {}
local savedFit = nil

if Config.Framework == 'ESX' then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Framework == 'QBCORE' then
    QBCore = exports['qb-core']:GetCoreObject()
elseif Config.Framework == 'OX' then
    local file = ('imports/%s.lua'):format(IsDuplicityVersion() and 'server' or 'client')
    local import = LoadResourceFile('ox_core', file)
    local chunk = assert(load(import, ('@@ox_core/%s'):format(file)))
    chunk()
end

local function permCheck(group, grade)
    if Config.Framework == 'ESX' then
        local player = ESX.GetPlayerData()
        if player.job.name == group and player.job.grade >= grade then
            return true
        end
        return false
    elseif Config.Framework == 'QBCORE' then
        local player = QBCore.Functions.GetPlayerData()
        if (player.job.name == group and player.job.grade.level >= grade) or (player.gang.name == group and player.gang.grade.level >= grade) then
            return true
        end
        return false
    elseif Config.Framework == 'OX' then
        local player = Ox.GetPlayerData()
        if player.groups[group] and player.groups[group] >= grade then
            return true
        end
        return false
    end
end

local function createPed(self, i)
    local gender = 4
    lib.requestModel(self.data.ped.model)
    if self.data.ped.gender == 'male' then
        gender = 4
    elseif self.data.ped.gender == 'female' then
        gender = 5
    end

    npcs[i] = CreatePed(gender, self.data.ped.model, self.pedCoords.x, self.pedCoords.y, self.pedCoords.z - 1.0, self.pedCoords.w, false, false)
    FreezeEntityPosition(npcs[i], true)
    SetEntityInvincible(npcs[i], true)
    SetBlockingOfNonTemporaryEvents(npcs[i], true)
end

local function changeOutfit(outfit)
    exports['fivem-appearance']:setPedComponents(cache.ped, {outfit.torso, outfit.undershirt, outfit.pants, outfit.shoes, outfit.bag, outfit.accesories, outfit.kevlar, outfit.badge, outfit.arms})
    exports['fivem-appearance']:setPedProps(cache.ped, {outfit.hat})
end

local function restoreOutfit()
    exports['fivem-appearance']:setPedAppearance(cache.ped, savedFit)
    savedFit = nil
end

local function saveOutfit()
    savedFit = exports['fivem-appearance']:getPedAppearance(cache.ped)
    TriggerServerEvent('fivem-appearance:save', savedFit)
end

local function openMenu(outfits, group)
    local options = {}
    local playerModel = GetEntityModel(cache.ped)
    for k, v in pairs(outfits) do
        if permCheck(group, v.grade) and v.model == playerModel then
            options[#options+1] = {id = 'job_clothes_' .. k, icon = "fa-solid fa-shirt", title = v.label, onSelect = function() changeOutfit(v) end}
        end
    end
    if table.type(options) == 'empty' then
        return lib.notify({type = 'error', description = 'You do not have access to this Wardrobe'})
    end
    if savedFit ~= nil then
        options[#options+1] = {id = 'job_clothes_restore', icon = "fa-solid fa-hand-back-fist", title = 'Grab Clothes', onSelect = function() restoreOutfit() end}
    end
    options[#options+1] = {id = 'job_clothes_save', icon = "fa-solid fa-floppy-disk", title = 'Save Current Outfit', onSelect = function() saveOutfit() end}
    lib.registerContext({id = 'job_clothes', title = 'Wardrobe', options = options})
    lib.showContext('job_clothes')
end

for k, v in pairs(Config.groups) do
    for i = 1, #v.locations do
        local coords = vector3(v.locations[i].x, v.locations[i].y, v.locations[i].z)
        local clothesPeds = lib.points.new(coords, 30, {group = k, data = v, pedCoords = v.locations[i]})

        function clothesPeds:onEnter()
            createPed(self, i)
        end

        function clothesPeds:onExit()
            DeletePed(npcs[i])
        end

        local groupClothes = lib.points.new(coords, 3, {group = k, data = v})

        function groupClothes:onEnter()
            lib.showTextUI('[E] - Open Wardrobe', {})
        end

        function groupClothes:onExit()
            lib.hideTextUI()
        end

        function groupClothes:nearby()
            if IsControlJustReleased(0, 38) then
                openMenu(self.data.outfits, self.group)
            end
        end
    end
end

for k,v in pairs(Config.LocationsWardRobe) do
    local coords = vector3(v.coords.x, v.coords.y, v.coords.z)

    local WardRobeClothes = lib.points.new(coords, v.distancepoint, {})

    function WardRobeClothes:nearby()
        if self.currentDistance < 5 then 
            DrawMarker(23, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, nil, nil, false)
        end
        if self.currentDistance < v.distanceTrigger then
            lib.showTextUI('[E] - Open Wardrobe Personal', {})
            if IsControlJustReleased(0, 38) then
                exports['fivem-appearance']:openWardrobe()
            end
        else 
            lib.hideTextUI()
        end
    end
end
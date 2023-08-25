--[[DONT TOUCH THIS FILE]]--
QBCore = exports['qb-core']:GetCoreObject()
LabFunctions = {}
Config = Config or {}
Config.Drugs = Config.Drugs or {}
console = {
  log = function(...)
    print(...)
  end
}

local UniqueIds = {}

function CreateUniqueId(length, prefix, intOrStringOrBoth, maxRecursion)
  local id = prefix or ""
  local maxRecursion = maxRecursion or 50
  local rand = intOrStringOrBoth or 'both'
  for i = 1, length do
    if rand == 'both' then
      if math.random(1, 2) == 1 then
        id = id .. string.char(math.random(48, 57))
      else
        id = id .. string.char(math.random(97, 122))
      end
    elseif rand == 'int' then
      id = id .. string.char(math.random(48, 57))
    elseif rand == 'string' then
      id = id .. string.char(math.random(97, 122))
    end
  end

  if UniqueIds[id] then
    if maxRecursion > 0 then
      maxRecursion = maxRecursion - 1
      return CreateUniqueId(length, prefix, rand, maxRecursion)
    else
      return false
    end
  end
  UniqueIds[id] = true
  return id
end

function CalculateMaxValue(drugName, currentUpgrades)
  local total = 0
  local drugConfig = Config.Drugs[drugName] or {}
  local configUpgrades = drugConfig.Upgrades or {}
  for name, level in pairs(currentUpgrades) do
    local configUpgrades = configUpgrades[name] or {}
    local levelData = configUpgrades[level]
    if levelData then
      total = total + levelData.upgradeValue
    end
  end
  return total
end

function SplitId(inputString)
  local parts = {}

  for part in inputString:gmatch("[^:]+") do
      parts[#parts + 1 ] = part
  end

  return parts[1], parts[2]
end

function CheckDistance(ent1, ent2)
  return #(GetEntityCoords(ent1) - GetEntityCoords(ent2))
end

function CheckPlayerDistance(src1, src2)
  return CheckDistance(GetPlayerPed(src1), GetPlayerPed(src2))
end
Config = {}
Config.Locale = 'en'

Config.FrameworkEventsName = 'JLRP-Framework' -- if your framework events name are like 'esx:onPlayerSpawn', write 'esx' for Config.FrameworkEventsName

Config.EarlyRespawnTimer = 1  -- time(minute) till respawn is available
Config.BleedoutTimer = 10 -- time(minute) till the player bleeds out
Config.DistressSignalToHospitalUnitsTimer = 1 -- time(minute) till the player can again send distress signal to available hospital units

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine = true
Config.EarlyRespawnFineAmount = 5000
Config.EarlyRespawnFineMoneyType = 'money' -- valid values : 'money or 'bank' or 'black_money'(not suggested)

Config.RemoveItemsAfterRPDeath = true

Config.RemoveItemsAfterRPDeath = true
--[[ DON'T UNCOMMENT FOR NOW. WAITING FOR OX_INVENTORY TO BRING THIS FEATURE IN ClearInventory(inv, keep)
Config.FilteredItems = {
    {
        Name = 'id_card', -- name of the item that won't be deleted after Config.RemoveItemsAfterRPDeath is set to true
        Metadata = {}, -- if the item has a certain metadata
        Job = {} -- if included any, after Config.RemoveItemsAfterRPDeath is set to true, only the players that have these job(s) will have the item still with them if have one
    }
}
]]
Config.RemoveCashAfterRPDeath = false

Config.Zones = {
    {
        HospitalName = 'City Hospital',
        AuthorizedJobNames = {'ambulance'},    
        Blip = {
            Enable = true,
            Position = {x = 341.0, y = -1397.3, z = 32.5}
        },
        OnOffDutyPositions = {
            {x = 341.0, y = -1397.3, z = 32.5}
        },
        RespawnPoints = {
            {x = 341.0, y = -1397.3, z = 32.5, h = 48.5}
        }
    }
}

if IsDuplicityVersion() then
    Config.AutoAdjustDatabaseWithConfigJob = true --if set to true it automaticaly updates the database if any of Config.Job values change
    Config.Job = {
        ['ambulance'] = {
            Label = 'Ambulance',
            Grades = {
                ['0'] = {
                    Name = 'trainee',
                    Label = 'Trainee',
                    Salary = 200,
                    AccessToBossMenu = false -- would only work if the framework is JLRP-Framework
                },
                ['1'] = {
                    Name = 'medic',
                    Label = 'Medic',
                    Salary = 400,
                    AccessToBossMenu = false -- would only work if the framework is JLRP-Framework
                },
                ['2'] = {
                    Name = 'paramedic',
                    Label = 'Paramedic',
                    Salary = 800,
                    AccessToBossMenu = false -- would only work if the framework is JLRP-Framework
                },
                ['3'] = {
                    Name = 'doctor',
                    Label = 'doctor',
                    Salary = 1000,
                    AccessToBossMenu = false -- would only work if the framework is JLRP-Framework
                },
                ['4'] = {
                    Name = 'surgeon',
                    Label = 'Surgeon',
                    Salary = 1200,
                    AccessToBossMenu = false -- would only work if the framework is JLRP-Framework
                },
                ['5'] = {
                    Name = 'chief', -- make sure the name for the highest rank MUST be 'boss'
                    Label = 'Chief',
                    Salary = 1350,
                    AccessToBossMenu = true -- would only work if the framework is JLRP-Framework
                },
                ['6'] = {
                    Name = 'boss', -- make sure the name for the highest rank MUST be 'boss'
                    Label = 'Boss',
                    Salary = 1500,
                    AccessToBossMenu = true -- would only work if the framework is JLRP-Framework
                }
            }
        }
    }
end
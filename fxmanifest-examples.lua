-- ============================================
-- Sollumz 2.8.0 Asset Loading Examples
-- ============================================
-- These are example fxmanifest.lua configurations
-- for different types of assets created with Sollumz
-- ============================================

-- ============================================
-- EXAMPLE 1: Simple Building/Prop Resource
-- ============================================
fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Custom building created with Sollumz 2.8.0'
version '1.0.0'

-- For simple YDR files (buildings, props), you don't need to do anything special
-- Just place your .ydr files in the stream/ folder and they'll load automatically
-- FiveM automatically scans the stream/ folder for .ydr, .yft, .ybn, .ytyp files

-- ============================================
-- EXAMPLE 2: MLO (Multi-Level Object) Resource
-- ============================================
fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Custom MLO interior created with Sollumz 2.8.0'
version '1.0.0'

-- For MLOs, you need to explicitly load the YTYP file
data_file 'DLC_ITYP_REQUEST' 'stream/mlos/your_interior.ytyp'

-- If your MLO has multiple YTYP files:
-- data_file 'DLC_ITYP_REQUEST' 'stream/mlos/interior1.ytyp'
-- data_file 'DLC_ITYP_REQUEST' 'stream/mlos/interior2.ytyp'

-- ============================================
-- EXAMPLE 3: Vehicle Resource
-- ============================================
fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Custom vehicle created with Sollumz 2.8.0'
version '1.0.0'

-- Vehicles (.yft files) in the stream/ folder load automatically
-- If you're using a vehicle script (like qb-vehicleshop), you'll need:
-- shared_scripts {
--     '@qb-core/shared/vehicles.lua' -- Example path, adjust to your framework
-- }

-- ============================================
-- EXAMPLE 4: Complete Asset Pack
-- ============================================
fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'Complete asset pack: buildings, vehicles, props, and MLOs'
version '1.0.0'

-- Load MLO YTYP files
data_file 'DLC_ITYP_REQUEST' 'stream/mlos/*.ytyp'

-- Optional: If you have YMAP files for world placement
-- data_file 'GTXD_PARENTING_DATA' 'stream/ymaps/*.ydr'

-- Client scripts (if needed for interactions, teleports, etc.)
client_scripts {
    'client.lua'
}

-- Server scripts (if needed)
server_scripts {
    'server.lua'
}

-- Shared config
shared_scripts {
    'config.lua'
}

-- ============================================
-- EXAMPLE 5: MLO with Teleport/Entry Script
-- ============================================
fx_version 'cerulean'
game 'gta5'

author 'YourName'
description 'MLO interior with entry/exit system'
version '1.0.0'

-- Load the MLO
data_file 'DLC_ITYP_REQUEST' 'stream/mlos/your_interior.ytyp'

-- Scripts for teleporting players in/out
client_scripts {
    'client/main.lua',
    'client/teleport.lua'
}

server_scripts {
    'server/main.lua'
}

shared_scripts {
    'config.lua'
}

-- Dependencies
dependencies {
    'qb-core', -- or your framework
    'qb-target' -- if using target system
}

-- ============================================
-- NOTES:
-- ============================================
-- 1. All .ydr, .yft, .ybn files in stream/ load automatically
-- 2. .ytyp files (MLOs) need explicit data_file declaration
-- 3. Organize files in subfolders: stream/buildings/, stream/vehicles/, etc.
-- 4. File names should be lowercase and use underscores (e.g., my_building.ydr)
-- 5. Make sure your resource folder name matches your resource name
-- 6. Restart your server after adding new assets
-- ============================================


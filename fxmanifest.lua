fx_version 'cerulean'
game 'gta5'

-- Resource Information
author 'AJTheDev'
description 'Sample FiveM resource for loading custom Sollumz assets'
version '1.0.0'

-- This is a sample fxmanifest.lua for loading custom assets created with Sollumz 2.8.0
-- Place your exported .ydr, .yft, .ybn, and .ytyp files in the stream/ folder
-- FiveM will automatically load them when the resource starts

-- Files in the stream/ folder are automatically loaded
-- No need to explicitly list them here, but you can organize them in subfolders:
-- stream/buildings/your_building.ydr
-- stream/vehicles/your_vehicle.yft
-- stream/props/your_prop.ydr
-- stream/mlos/your_mlo.ytyp

-- Optional: If you need to load specific files or want more control, you can use:
-- files {
--     'stream/buildings/*.ydr',
--     'stream/vehicles/*.yft',
--     'stream/props/*.ydr',
--     'stream/mlos/*.ytyp',
--     'stream/collisions/*.ybn'
-- }

-- Note: The stream/ folder is automatically scanned, so the above is usually not needed

-- If you're using YMAP files for placing assets in the world, uncomment this:
-- data_file 'DLC_ITYP_REQUEST' 'stream/mlos/*.ytyp'
-- data_file 'GTXD_PARENTING_DATA' 'stream/buildings/*.ydr'

-- Example: Loading a YTYP (MLO) file
-- data_file 'DLC_ITYP_REQUEST' 'stream/mlos/your_interior.ytyp'

-- Example: Loading YMAP files (if you're using CodeWalker to place assets)
-- data_file 'DLC_ITYP_REQUEST' 'stream/ymaps/*.ytyp'
-- data_file 'GTXD_PARENTING_DATA' 'stream/ymaps/*.ydr'

-- Client Scripts (if you need any client-side logic)
-- client_scripts {
--     'client.lua'
-- }

-- Server Scripts (if you need any server-side logic)
-- server_scripts {
--     'server.lua'
-- }

-- Shared Scripts (if you need shared logic)
-- shared_scripts {
--     'config.lua'
-- }

-- Dependencies (if your resource depends on other resources)
-- dependencies {
--     'qb-core', -- Example: if you need QB-Core
-- }


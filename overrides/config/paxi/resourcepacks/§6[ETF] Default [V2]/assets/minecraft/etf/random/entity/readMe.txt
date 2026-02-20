Entity Texture Features does indeed support using this folder for varied entity textures using the optifine format,
however for this example pack I have decided to use the (Optifine recommended) directory so this folder is empty.

The directories that can be used for ETF-supported optifine random mobs are:
1. (ETF mod only) - assets/minecraft/etf/random/entity/
2. (Optifine recommended) - assets/minecraft/optifine/random/entity/
3. (Optifine legacy) - assets/minecraft/optifine/mob/
4. (Vanilla) - assets/minecraft/textures/entity/

these folders must be structured identically to assets/minecraft/textures/entity/...

textures are loaded from these directories in numerical order, #1 will overwrite #2 and so on.

directory #2 is recommended please use that, #1. should only be used if you need you textures to be different with ETF than Optifine for some reason(like CEM model compatability)

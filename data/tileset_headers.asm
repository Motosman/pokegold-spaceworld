INCLUDE "constants.asm"

SECTION "data/tileset_headers.asm", ROMX

MACRO tileset
	db BANK(\1_GFX) ; shared bank
	dw \1_Meta, \1_GFX, \1_Coll
	dw \2, ; animation set
	dw NULL ; unused
ENDM

Tilesets:
	; name, animation set, 2 unknown
	tileset Tileset_00, TilesetGenericAnim, $00, $00
	tileset Tileset_01, TilesetWaterAnim, $00, $00
	tileset Tileset_02, TilesetFlowerAnim, $00, $00
	tileset Tileset_03, TilesetFlowerAnim, $00, $00
	tileset Tileset_04, TilesetWaterAnim, $00, $00
	tileset Tileset_05, TilesetFontAnim, $00, $00
	tileset Tileset_06, TilesetWaterAnim, $00, $00
	tileset Tileset_07, TilesetFlowerAnim, $00, $00
	tileset Tileset_08, TilesetWaterAnim, $00, $00
	tileset Tileset_09, TilesetNoAnim, $00, $00
	tileset Tileset_0a, TilesetNoAnim, $00, $00
	tileset Tileset_0b, TilesetNoAnim, $00, $00
	tileset Tileset_0c, TilesetNoAnim, $00, $00
	tileset Tileset_0d, TilesetNoAnim, $00, $00
	tileset Tileset_0e, TilesetNoAnim, $00, $00
	tileset Tileset_0f, TilesetNoAnim, $00, $00
	tileset Tileset_10, TilesetNoAnim, $00, $00
	tileset Tileset_11, TilesetNoAnim, $00, $00
	tileset Tileset_12, TilesetNoAnim, $00, $00
	tileset Tileset_13, TilesetRocketHouseAnim, $00, $00
	tileset Tileset_14, TilesetNoAnim, $00, $00
	tileset Tileset_15, TilesetNoAnim, $00, $00
	tileset Tileset_16, TilesetNoAnim, $00, $00
	tileset Tileset_17, TilesetNoAnim, $00, $00
	tileset Tileset_18, TilesetNoAnim, $00, $00
	tileset Tileset_19, TilesetNoAnim, $00, $00
	tileset Tileset_1a, TilesetNoAnim, $00, $00
	tileset Tileset_1b, TilesetGenericAnim, $00, $00

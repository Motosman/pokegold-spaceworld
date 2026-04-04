; collision IDs are built like this:
; 76543210
; \__/|\_/
;   | | \-- SubType
;   | \---- Flag
;   \------ Type
;
; What exactly flag means or if it
; means anything is up to Type.
; Old Types:
; 0 - Regular            8 - Cuttable
; 1 - ???                9 - unused
; 2 - Water              A - unused
; 3 - ???                B - unused
; 4 - Water 2            C - unused
; 5 - Pits               D - unused
; 6 - Warps              E - unused
; 7 - Special Talk Act   F - unused
; New Types:
; 0 - Regular            8 - ???
; 1 - Cuttable           9 - Special Talk Action
; 2 - Water              A - Jump Action
; 3 - Water 2            B - unused
; 4 - Land               C - unused
; 5 - Land 2             D - unused
; 6 - ???                E - unused
; 7 - Warps              F - unused

MACRO tilecoll
; used in data/tilesets/*_collision.inc
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM

DEF COLL_TYPE_MASK          EQU $f0
DEF COLL_SUBTYPE_MASK       EQU $07
DEF COLL_WATER_SUBTYPE_MASK EQU $03

DEF COLL_FLAG EQU $08

; old collision constants

DEF OLD_HI_NYBBLE_WATER      EQU $20
DEF OLD_HI_NYBBLE_WATER_ALT  EQU $40
DEF OLD_HI_NYBBLE_PITS       EQU $50
DEF OLD_HI_NYBBLE_WARPS      EQU $60
DEF OLD_HI_NYBBLE_SPECIAL    EQU $70
DEF OLD_HI_NYBBLE_TALL_GRASS EQU $80

DEF COLL_OLD_SOLID EQU $01
DEF COLL_OLD_FLOOR EQU $03
DEF COLL_OLD_WALL  EQU $04

; $10 (old)
DEF COLL_OLD_LEDGE EQU $11

; water collisions (old)
DEF COLL_OLD_WATER   EQU $24

; water collisions 2 (old)
DEF COLL_OLD_WATERFALL EQU $40
DEF COLL_OLD_HOTSPRING EQU $41
DEF COLL_OLD_42        EQU $42
DEF COLL_OLD_43        EQU $43
DEF COLL_OLD_WHIRLPOOL EQU $44

; falling warp collisions (old)
DEF COLL_OLD_PIT  EQU $50
DEF COLL_OLD_ROCK EQU $51

; warp collisions (old)
DEF COLL_OLD_CARPET EQU $60
DEF COLL_OLD_DOOR   EQU $61

; special collisions (old)
DEF COLL_OLD_TOWN_MAP  EQU $70
DEF COLL_OLD_SHOP_SIGN EQU $71
DEF COLL_OLD_MART_ITEM EQU $72
DEF COLL_OLD_COUNTER   EQU $73

; cuttable tiles (old)
DEF COLL_OLD_CUT_TREE EQU $80
DEF COLL_OLD_GRASS_81 EQU $81
DEF COLL_OLD_GRASS_82 EQU $82
DEF COLL_OLD_GRASS_83 EQU $83
 
DEF COLL_OLD_OOB      EQU $FF ; first block in every tileset except TILESET_SILENT_HILL.

; new collision constants

DEF COLL_FLOOR     EQU $00
DEF COLL_OOB       EQU $05 ; first block in TILESET_SILENT_HILL.
DEF COLL_WALL      EQU $07

; cuttable collisions
DEF COLL_GRASS     EQU $10
DEF COLL_CUT_TREE  EQU $12

; water collisions
DEF COLL_WATER_20    EQU $20
DEF COLL_WATER       EQU $21
DEF COLL_WATERFALL   EQU $22
DEF COLL_WATER_SOLID EQU $27

; water collisions 2
DEF COLL_WATER2_E EQU $30
DEF COLL_WATER2_W EQU $31
DEF COLL_WATER2_N EQU $32
DEF COLL_WATER2_S EQU $33
; $34..$37 will behave like COLL_WATER2_E..COLL_WATER2_S

; land collisions
DEF COLL_LAND_SLOW EQU $40
DEF COLL_LAND_E    EQU $41
DEF COLL_LAND_W    EQU $42
DEF COLL_LAND_N    EQU $43
DEF COLL_LAND_S    EQU $44
; $45..$47 will behave like COLL_LAND_E

; land collisions 2
DEF COLL_LAND2_E EQU $50
DEF COLL_LAND2_W EQU $51
DEF COLL_LAND2_N EQU $52
DEF COLL_LAND2_S EQU $53
; $54..$57 will behave like COLL_LAND2_E

; falling warp collisions
DEF COLL_PIT	 EQU $60

; warp collisions
DEF COLL_CARPET   EQU $70
DEF COLL_DOOR     EQU $71
DEF COLL_STEPS    EQU $72
DEF COLL_CAVE     EQU $73

; special collisions
DEF COLL_COUNTER           EQU $90
DEF COLL_BOOKCASE          EQU $91
DEF COLL_92                EQU $92
DEF COLL_PC                EQU $93
DEF COLL_RADIO             EQU $94
DEF COLL_TOWN_MAP          EQU $95
DEF COLL_STRAIGHT_SIGNPOST EQU $97

; jump collisions
; perform jump in marked direction, else
; regular walking
DEF COLL_JUMP_E  EQU $a0
DEF COLL_JUMP_W  EQU $a1
DEF COLL_JUMP_N  EQU $a2
DEF COLL_JUMP_S  EQU $a3
DEF COLL_JUMP_SE EQU $a4
DEF COLL_JUMP_SW EQU $a5
DEF COLL_JUMP_NE EQU $a6
DEF COLL_JUMP_NW EQU $a7

DEF NEVER_SOLID     EQU 0
DEF SOMETIMES_SOLID EQU 1
DEF ALWAYS_SOLID    EQU 15

; collision data type nybbles
DEF LO_NYBBLE_GRASS      EQU $07
DEF HI_NYBBLE_TALL_GRASS EQU $10
DEF HI_NYBBLE_WATER      EQU $20
DEF HI_NYBBLE_WATER_ALT  EQU $30 ; HI_NYBBLE_CURRENT in final
DEF HI_NYBBLE_WALK       EQU $40
DEF HI_NYBBLE_WALK_ALT   EQU $50
DEF HI_NYBBLE_PITS       EQU $60
DEF HI_NYBBLE_WARPS      EQU $70
DEF HI_NYBBLE_SPECIAL    EQU $90
DEF HI_NYBBLE_LEDGES     EQU $a0

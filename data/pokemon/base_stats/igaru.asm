	db DEX_IGARU ; 253

	db  65,  60,  75,  90,  70,  45
	;   hp  atk  def  spd  sat  sdf

	db TYPE_ICE, TYPE_NORMAL ; type
	db 255 ; catch rate
	db 100 ; base exp
	db ITEM_APPLE, ITEM_SHARP_HORN ; items
	db GENDER_50_50 ; gender ratio
	db 100, 4, 70 ; unknown
	dn 5, 5 ; sprite dimensions
	dw IgaruPicFront, IgaruPicBack ; sprites
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm 1, 5, 6, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 22, 24, 25, 29, 30, 31, 32, 33, 34, 35, 36, 38, 40, 44, 45, 46, 49, 50, 54, 55
	; end

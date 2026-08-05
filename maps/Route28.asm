	map_attributes Route28, ROUTE_28
	connection north, Route15, ROUTE_15, 25
	connection south, OldCity, OLD_CITY, -5

Route28_MapEvents::
	dw $4000 ; unknown

	def_warp_events

	warp_event $4d, $a, ROUTE_27, 1, 0
	warp_event $4d, $b, ROUTE_27, 2, 0
	def_bg_events

	def_object_events

Route28_Blocks::
INCBIN "maps/Route28.blk"

	map_dummy_text_pointers

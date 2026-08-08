	map_attributes Route28, ROUTE_28
	connection north, Route15, ROUTE_15, 24
	connection south, OldCity, OLD_CITY, -6

Route28_MapEvents::
	dw $4000 ; unknown

	def_warp_events

	warp_event $40, $8, ROUTE_27, 1, 0
	warp_event $40, $9, ROUTE_27, 2, 0
	def_bg_events

	def_object_events

Route28_Blocks::
INCBIN "maps/Route28.blk"

	map_dummy_text_pointers

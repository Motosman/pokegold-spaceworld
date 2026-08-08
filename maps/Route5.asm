	map_attributes Route5, ROUTE_5
	connection west, HighTech, HIGHTECH, -7
	connection east, Route4, ROUTE_4, -16

Route5_MapEvents::
	dw $4000 ; unknown

	def_warp_events
	warp_event 44, 10, ROUTE_4, 3, 0
	warp_event 44, 11, ROUTE_4, 4, 0

	def_bg_events

	def_object_events

Route5_Blocks::
INCBIN "maps/Route5.blk"

	map_dummy_text_pointers

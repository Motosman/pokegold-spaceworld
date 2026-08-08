	map_attributes Route27, ROUTE_27
	connection north, Newtype, NEWTYPE, 0

Route27_MapEvents::
	dw $4000 ; unknown

	def_warp_events

	warp_event  5,  4, ROUTE_28, 1, 0
	warp_event  5,  5, ROUTE_28, 2, 0
	warp_event 49, 21, KANTO, 31, 0
	def_bg_events

	def_object_events

Route27_Blocks::
INCBIN "maps/Route27.blk"

	map_dummy_text_pointers

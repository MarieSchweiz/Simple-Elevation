
# Activate elevation within an event
yourlayer.onTouchStart (event, layer) ->
			# layer, elevation, time, curve
	elevation(layer,12, 0.20, "easeOut")

# Activate elevation function for a layer without an event

elevation(yourlayer,12, 0.20, "easeOut")

# Activate elevation function without defining time and curve


elevation(yourlayer,12)
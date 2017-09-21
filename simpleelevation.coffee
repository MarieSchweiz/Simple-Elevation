# Created by Marie Schweiz on 21 September 2017
# 
# Use to create and design an material.io elevation effect
# Read more about elevation here: https://material.io/guidelines/material-design/elevation-shadows.html
#
# To Get Started...
#
# 1. Place this file in Framer Studio modules directory
#
# 2. In your project include:
#
#     	elevation = require("simpleelevation").elevation
#
# 3. Activate the ripple by adding (layer, elevation, time, curve):
#
# 		yourlayer.onTap (event, layer) ->
# 			elevation(layer,8, 0.20, "easeOut")
#		
# 4. You can also just call the function onto a layer, missing time and curve getting filled by defaults.
#	
# 		elevation(yourlayer,8)


exports.elevation = (layer, elevationnumber, time, curve) ->
	
	#better variable name
	layertoelelevated = layer

	#ä A few defaults to deal with shorter syntax
	defaulttime = 0.20
	defaultcurve = "ease"
	defaultelevation = 0
	
	# Error handling
	if typeof elevationnumber isnt "number"
		throw Error "Elevation must be a number."
	
	if time is undefined
		time = defaulttime

	if typeof time isnt "number"
		throw Error "Time must be a number."

	if curve is undefined
		curve = defaultcurve

	if typeof curve isnt "string"
		throw Error "Curve must be a string."

	# If elevation number is between 0 and 24
	if elevationnumber >= 0 and elevationnumber <= 24 

		#target layer
		layertoelelevated.animate

			shadowSpread: 0
			shadowX: 0
			shadowY: elevationnumber
			shadowBlur: elevationnumber
			shadowColor:"rgba(0, 0, 0, 0.24)"
			options:
				time: time
				curve: curve
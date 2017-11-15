Layer::elevate = (height, animationOptions = {time: .2, curve: "ease"}) ->

	@shadowColor = "rgba(0,0,0,.24)" unless @shadowColor?
	animationOptions.time = .2       unless animationOptions?.time?
	animationOptions.curve = "ease"  unless animationOptions?.time?

	@animate {shadowY: height, shadowBlur: height, options: animationOptions}

layer = new Layer point: Align.center

# Elevate using default animation
layer.elevate(20)

# Elevate using custom animation
layer.elevate(20, {time: 2, curve: Spring(damping: .5)})

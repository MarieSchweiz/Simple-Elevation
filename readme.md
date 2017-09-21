# Simple Elevation

A [Framer.js](https://github.com/koenbok/Framer) module for adding elevation values to your framer code. Compatible with framers design view.

[![Simple-Elevation Demo](/Simple-elevation-demo.gif)](https://framer.cloud/SxABD)

### Add Module
Learn how to add a module into your framer project and add the following lines of code to the head of your .coffee file.

```
elevation = require("simpleelevation").elevation
```
### Use Simple elevation
By adding a an event and calling the function or just call the function

```
# Activate elevation within an event
yourlayer.onTouchStart (event, layer) ->
			# layer, elevation, time, curve
	elevation(layer,12, 0.20, "easeOut")

# Activate elevation function for a layer without an event

elevation(yourlayer,12, 0.20, "easeOut")

# Activate elevation function without defining time and curve

elevation(yourlayer,12)
```

### Configure elevation function
By simply changing the values in the elevation function you can change elevation, time and curve. If you don't define them, they go back on defaults.

```
defaulttime = 0.20
defaultcurve = "ease"
defaultelevation = 0
```

<a href='https://open.framermodules.com/<Simple Elevation>'>
    <img alt='Install with Framer Modules'
    src='https://www.framermodules.com/assets/badge@2x.png' width='160' height='40' />
</a>


## MIT License

Copyright (c) 2017 [Marie Schweiz](https://twitter.com/ma_rylou)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
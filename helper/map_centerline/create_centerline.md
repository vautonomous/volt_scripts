## Create Centerline for Lanelet2 Maps

This script calculates centerlines of the input map and create a new map with calculated centerlines. 
The output map can be used to generate tiles with direction shapes.

### Usage

<code>python3 create_centerline.py \
--file='Path of the input map'
--output='Path of the input map' \
--origin Latitude Longitude </code>

**Note:** Before using this script, source lanelet2 workspace first. \
**Note:** This script ignore "speed_bump" and "crosswalk" tags in the map.



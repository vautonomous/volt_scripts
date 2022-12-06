## Create Centerline for Lanelet2 Maps

This script calculates centerlines of the input map and create a new map with calculated centerlines. 
The output map can be used to generate tiles with direction shapes.

### Usage

<code>python3 create_centerline.py \
--file='Path of the input map'
--output='Path of the input map' \
--origin Latitude Longitude </code>

**Note:** Before using this script, source [lanelet2](https://github.com/fzi-forschungszentrum-informatik/Lanelet2) workspace first. \
**Note:** This script ignore "speed_bump" and "crosswalk" tags in the map.

The output of this script is being used with Maperative to visualize the road direction. The script adds centerline for each lane and gives oneway tag which can be used with prepared .rules file. 

Original lanelet2 map:

![Screenshot from 2022-12-06 20-19-23](https://user-images.githubusercontent.com/15357471/205980039-502d6139-0b30-4a84-a64f-dad9234e8cf2.png)


Modified lanelet2 map:

![Screenshot from 2022-12-06 20-20-09](https://user-images.githubusercontent.com/15357471/205980086-828cab49-d312-447e-975a-b7e4aea13f9c.png)


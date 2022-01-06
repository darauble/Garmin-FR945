# Garmin-FR945
mkgmap styles and tools to generate maps for Garmin Forerunner 945

# Credits
I did not perform my work from scratch (obviously). I copied a lot and was inspired by different works.
* [V0174](https://github.com/V0174/garminstyly) for basic style set and hiking path colouring
* [Frikart.no](http://frikart.no/dok/index.html) for visual idea of the maps
* [OpenTopoMap](https://github.com/der-stefan/OpenTopoMap) for giving an idea for details
* [garmin.openstreetmap.nl](https://github.com/ligfietser/mkgmap-style-sheets) for very nice forest colouring and track pixmaps (*Generic New* style to be exact)

# The rationale
I like maps on my Forerunner 945, even though the screen is very small. But it is very nice for following the course, much better than simple breadcrumbs path. I also liked the explicit colouring of hiking paths in Locus  Map and wished I could have the trails highlighted on my watch too. Thus one can simply follow the highlighted route just by looking occasionally at it instead of preparing the course in advance.

Another thing most of the free available maps lacked some information I care about. The OpenTopoMap was closest to my wishes, but I simplly don't like its colour scheme, very small icons and missing trail highlighting. But is provided lots of nice stuff others lacked, e.g. gate barriers and fences.

As always: if you can't get something, make it yourself. This is also the reason of me trotting, cycling and riding through forests to draw as much detailed track network I can in my available free time and add to OpenStreetmap. There are commercial maps available in my country with good details, but they lack lots of other features present in OSM and are updated poorly (if at all).

# Colours
Garmin watches in Fenix series and Forerunner 945 have very power effective, but also very bland screens. So the colours of the map must be highly saturated, almost unreasonably so. However, those eye-harmful colours translate quite well into bland screen.

# Layers
The Garmin maps are arranged into different subfiles for different layers. *mkgmap* has possibility to use "resolution" or "levels" mapped to "resolution". I am using "levels" and I found that the FR945 has the following scale-to-level:

* 0: 300 m
* 1: 1.2 km
* 2: 5 km

Probably there are other scales, but I think them to be irrelevant on a small screen of the watch.

So the level 0 is the one that I am using mostly on the watch, with the scale of 50-200 meters.

Another interesting feature is that Forerunner 945 selectively shows some POI's only from 80 meters and down. Other POIs, with the IDs in range 0x64-0x67 are displayed over all 300 meters scale. So some objects I want to see over all this first scale range, I tried to find appropriate mapping in that ID range. For example, I am very interested in wayside crosses/shrines, hiking trails (their starting points to be precise), barriers/gates, benches and some other objects I want to see at 300 m scale. So these objects are assigned different IDs than is accepted by default.

# Usage
There are Linux shellscripts provided with self-descriptive (I hope) names. Bounds can be downloaded once and left on the disk, they don't change often. Tools also can be downloaded once. OpenStreetMap dumps can be downloaded every day if there's such an urgency. Then the map should be split and compiled. Resulting map is put into _data_ directory.

# Screenshots
See the _screenshots_ directory for photos of the watch, screenshots from QMapShack and screenshots from the watch itself.


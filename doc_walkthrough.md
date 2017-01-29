---
layout: default
title: Walkthrough page
permalink: /doc/walkthrough/
---

The following page is intended to contain instructions for familiarizing users with the interfaces of the various components of TeeUniverse.


<h1 id="basicwalkthrough">Basic walkthrough through the map editor</h1>

From the executables in a TeeUniverse build, teeuniverse_editor is the one for the map editor. This page aims to describe as indubitable as feasible the operations that are most likely necessary in mapping.

<h2>Opening a map</h2>
<h3>Opening a received map</h3>
<p>To get a quicker overview of how to map with TeeUniverse, just import a Teeworlds map via the “File” entry in the menu bar at the top. You can open dm1 to start simply, or you open the <a href="https://github.com/necropotame/teeworlds-infclass/blob/master/data/packages/infc_skull.tup" title="Infection Class Skull">InfClass Skull map</a> to see InfClass features used you probably will need, or you import a suggested <a href="https://github.com/ddnet/ddnet-maps/blob/master/types/novice/maps/Kobra%204.map" title="Kobra 4">DDNet map</a> or <a href="https://github.com/35niavlys/teeworlds-fng-maps/blob/master/data/maps/AlphaB/fng_AB_3.map" title="FNG AB 3 by AlphaB">OpenFNG map</a>.</p>

<p>Take care about the format and targeted modification of the map you import. For <a href="https://github.com/necropotame/teeworlds-infclass/tree/master/data/packages" title="Collected TeeUniverse packages of InfClass maps">InfClass maps</a>, it is preferred if you import TeeUniverse Packages via “Open Package“ which have the file ending “.tup”, and for vanilla maps or maps of other Teeworlds mods such as, but not limited to <a href="https://github.com/ddnet/ddnet-maps/tree/master/types" title="DDNet map collection">DDNet maps</a>, <a href="https://github.com/35niavlys/teeworlds-fng-maps/tree/master/data/maps" title="OpenFNG map collection">OpenFNG maps</a>, and <a href="https://github.com/Siile/Ninslash/tree/master/data/maps" title="The primary Ninslash maps">Ninslash maps</a>, make sure to have specified the target mod type opening the maps via “Import TeeWorlds Map”.</p>

<h3>Mapping from scratch</h3>
<p>To make an utterly new map, left-click “New Package” in the “File” menu and then “New Map” in the “Edit Menu” to insert an empty map into the package. TeeUniverse packages can contain multiple maps, too.</p>

<h2>Filtering visible parts of a map</h2>
<p>In the asset list in the left panel, you will see that there are four principal groups whereby maps are built, called “divisions” in the following. Toggle visibilities by clicking on eye icons in the asset list, so you see what is what, and pan around the map by holding your middle mouse button or control key with the left mouse button and moving your mouse. Zoom by your scroll wheel or manipulate the zoom by self-explaining elements dedicated to this in the toolbar.</p>

<p>Regarding the ranking of different layers, the layers in a division shown lower in the asset list are shown ahead of the higher shown layers in the map view and in the game wherefore you can move the asset list position of the layers listed after right-clicking on them.</p>

<h2>Zones</h2>
<h3>Zones layers in general</h3>
<p>In the zone division, the first division, you add basic game physics and the zones needed by modifications. You initiate zones by right-clicking “map” above the four zones in the asset list, left-clicking “add zone layer” in the context menu appearing, left-clicking the new zone layer in the asset list and assigning a zone type to the zone layer in the asset inspector in the right panel. To use zone types of modifications, you have to have imported the packages that contain them, which is supposed to happen automatically when you open a ready-for-playing map but has to be done manually when you intend to create a map from scratch for a modification. The packages that contain the zone layers for the here named modifications are included in the ”Default packages” collection selectable in the “Open Package” file dialog.</p>

<h3>The common zone type</h3>
<p>There is a game layer common to all Teeworlds-compatible maps realized by the “teeworlds” zone type included in the “teeworlds” package of TeeUniverse. You create one by adding a zone layer – preferably named “teeworlds” in the asset inspector – to which you assign the zone type “teeworlds” from the “teeworlds” package included in TeeUniverse at the asset inspector. This layer is needed on every Teeworlds map, for therewith you set what shall be ground and what shall be air.</p>

<h3>InfClass zone types</h3>
<p>For new InfClass maps add a layer “damage” to which you assign the zone type “icDamage” from the InfClass package included in TeeUniverse and a zone layer with the zone type “icTele” from the same package if needed. The former is used for the infected area, the latter possibly needed to define areas where a witch cannot let spawn infected.</p>

<h3>The OpenFNG zone type</h3>
<p>OpenFNG maps contain a zone layer with the zone type “openfng” from the OpenFNG package included in TeeUniverse. You set the shrines at this layer.</p>

<h3>DDNet zones</h3>
<p>DDNet maps have various zone types that are included in the “ddnet” package of TeeUniverse.</p>

<h3>The Ninslash zone type</h3>
<p>Ninslash maps contain a zone layer with the zone type “ninslash” from the Ninslash package included in TeeUniverse, but do not make use of a “teeworlds” zone type. It contains the physics by which Ninslash stands out from the flock of Teeworlds mods, being incompatible with legacy Teeworlds clients.</p>

<h3>Adding zone tiles using the stamp tool</h3>
<p>To impose tiles inside a zone layer, have selected the zone layer they have to be related to in the asset list, select the stamp tool in the toolbar, right-click to choose the intended tile type and left-click to set the tile. You can move around the map holding the left mouse button, but after this it is more convenient to right-click twice into the map view to sheathe the stamp tool and pick multiple tiles by drawing your left mouse button over an area of tiles which you then reuse by using your left mouse button.</p>

<h2>Entities</h2>
<p>The second division contains the spawn points and pickups. You add entity layers to it like you add zone layers. When having selected an entity layer in the asset list, right-click into the map view to select an entity and left-click to set it. If you are up to set pickups, make sure that you have selected “align the stamp to the grid” in the toolbar to posit the entities accurately.</p>

<h2>Background layers</h2>
<p>The third division, “Background Layers”, contains graphics in front of which your tee moves. You add background layers by two steps that comprise right-clicking on “map” above the four map divisions in the asset list to create a “Background Group” and then right-clicking into the background group that has now appeared in the Background Layers division to add layers there.</p>

<p>If you create a new map, it already contains a quad layer “sky”. Quad layers often comprise the graphics that move with your tee; typically, you have a sky and add a sun or stars as quads by assigning images for them in the asset inspector. The basic sky does not have an image assigned to it because it is a gradiant defined by colors on each vertex of it. TeeUniverse allows manipulating its color by clicking on the vertices with the “Edit Tool” selectable at the tool bar.</p>

<p>If you add quad layers beside the default sky, you should consider having them grouped separate from each other, so you can decide how much they move away from your tee. This is done by the parallax values at the right panel. If a group has parallax values that equal one each, its elements appear static and do move away from your tee as much as your tee moves. If a group has parallax values that equal zero, its elements chase your tee. The default position of a quad can be set by dragging it with the left mouse button.</p>

<p>You may want to use tile layers to depict walls in front of which the tees sojourn. For this purpose, select the tile layer in the asset list, assign a tileset image to a tile layer in the asset inspector, choose specific tiles from a tileset with a right click into the map view and apply them with the left mouse button.</p>

<h2>Foreground layers</h2>
<p>The fourth division, “Foreground layers”, contains those graphics hidden by which your tee moves, typically comprising utterly transparent tiles where there are air tiles in the physics zone and skinned tiles where there are ground tiles in the physics zone unless tiles that hide tees are intended. The way you add layers to the foreground layer division is analogous to the way you add layers to the background layer division.</p>

<p>Assuming usage of foreground layers to delineate tile-based physical boundaries of a map, the way you work here is mainly that you apply the stamp tool for tile layers wherever you have applied it for solid tiles, selecting a tile layer in the asset list, choosing a tile from its tileset image assigned to it in the asset inspector with a right click into the map view and applying it with left clicks, but quad layers are viable, too.</p>

<h2>New images</h2>
<p>If you want to add images not included in TeeUniverse to be chosen as tilesets or elsehow, you have to add the images to the asset list from the “Edit” menu in the menu bar, by clicking “Import Image”, or you add map packages that contain the desired images, but in the latter case you have to make sure that you ship the dependency packages too if you intend sending the map to someone. When you add an image that you want to use as a tileset of a tile layer, you have to tick “Compatible with tiles” in the asset inspector of that image.</p>



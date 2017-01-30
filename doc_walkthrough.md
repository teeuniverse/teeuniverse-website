---
layout: default
title: Basic walkthrough through map editing
permalink: /doc/walkthrough/
---

The following page is intended to contain instructions for familiarizing users with the interfaces of the various components of the TeeUniverse editor.

# Opening TeeUniverse editor #

From the executables in a TeeUniverse build, teeuniverse_editor is the one for the editor.
This page aims to describe as indubitable as feasible the operations that are most likely necessary in mapping.

# Opening a map #

To store maps, TeeUniverse use its own format, called “TeeUniverse Package”, or simply “package”.
You may encounter these packages in your file system under the extension “.tup” in their filename.
TeeUniverse editor is also able to import and export classical TeeWorlds maps, including those of mods as DDNet, InfClass or Ninslash.
To get a full experience with the editor, it is strongly recommended to always keep the last version of your work saved as a package,
and export your map as a TeeWorlds map only to distribute it or to deploy it on your servers.

## Opening a TeeWorlds map ##

To get a quicker overview of how to map with TeeUniverse, just import a Teeworlds map via the “File” entry in the menu bar at the top.
In the import dialog, you can select one of the default TeeWorlds maps distributed with TeeUniverse.
Please note that you can also access directly to all your existing TeeWorlds maps by choosing the directory “TeeWorlds maps” in the list of directory.

Take care about the “Compatibility mode” option to give a hint to TeeUniverse about the kind of flavour of TeeWorlds the map relies on.
If you don't precise correctly this option, you may obtain wrong zones and entities in your editor.

## Opening a TeeUniverse map ##

To open a TeeUniverse map, open the package that contains it via the “File” entry in the menu bar.
You will obtain the map in the exact state the author leaves it, including the position of the camera, the visibility attached to each layer, and the type of mod for which the map was made.

## Mapping from scratch ##

To make an utterly new map, left-click “New Package” in the “File” menu and fill the fields “name” and “author”.
Then, add a new map in your package using the menu “Edit” in the menu bar.

# Filtering visible parts of a map #

In the asset list in the left panel, you will see that there are four principal groups whereby maps are built, called “divisions” in the following.
Toggle visibilities by clicking on eye icons in the asset list, so you see what is what, and pan around the map by holding your middle mouse button or control key with the left mouse button and moving your mouse.
Zoom by your scroll wheel or manipulate the zoom by self-explaining elements dedicated to this in the toolbar.

Regarding the ranking of different layers, the layers in a division shown lower in the asset list are shown ahead of the higher shown layers in the map view and in the game wherefore you can move the asset list position of the layers listed after right-clicking on them.

# Zones #

In the zone division, the first division, you add basic game physics and the zones needed by modifications.
You create zones by right-clicking “map” above the four divisions in the asset list, left-clicking “Add zone tile layer” or “Add zone object layer” in the context menu appearing,
left-clicking the new zone layer in the asset list and assigning a zone type to the zone layer in the asset inspector in the right panel.
To use zone types of modifications, you have to have opened the packages that contain them, which is supposed to happen automatically when you open a ready-for-playing map but has to be done manually when you intend to create a map from scratch.
The packages that contain the zone layers for the here named modifications are included in the ”Default packages” collection selectable in the “Open Package” file dialog.
TeeUniverse is shipped by default with the packages “teeworlds”, “ddnet”, “infclass”, “openfng”, “ninslash” and “sport”, each of them containing a set of ready-to-use zone types.

## TeeWorlds zone type ##

There is a game layer common to all Teeworlds-compatible maps realized by the “teeworlds” zone type included in the “teeworlds” package of TeeUniverse.
You create one by adding a zone layer – preferably named “teeworlds” in the asset inspector – to which you assign the zone type “teeworlds” from the “teeworlds” package, at the asset inspector.
This layer is needed on every Teeworlds map, for therewith you set what shall be ground and what shall be air.
If you created a new map, of if you imported an existing one, this zone should be already present in your map.

## InfClass zone types ##

For new InfClass maps add a layer “damage” to which you assign the zone type “icDamage” from the “infclass” package and a zone layer with the zone type “icTele” from the same package if needed.
The former is used for the infected area and death zones, the latter possibly needed to define areas where a witch cannot let spawn infected.

## OpenFNG zone type ##

OpenFNG and FNG2 maps contain a zone layer with the zone type “openfng” from the “openfng” package. You set the shrines at this layer.

## DDNet zones ##

DDNet maps have various zone types that are included in the “ddnet” package of TeeUniverse, such as front layer, tele layer and switch layer.
Please note that the speedup layer is not yet supported by TeeUniverse.

## Ninslash zone type ##

Ninslash maps contain a zone layer with the zone type “ninslash” from the “ninslash” package, but do not make use of a “teeworlds” zone type.
It contains the physics by which Ninslash stands out from the flock of Teeworlds mods, being incompatible with legacy Teeworlds clients.

## Create zone tiles using the stamp tool ##

To impose tiles inside a zone tile layer, have selected the zone layer they have to be related to in the asset list, select the stamp tool in the toolbar,
right-click to choose the intended tile type and left-click to set the tile.
Pressing again right-click will clean your stamp, and pressing a third time right-click will open again the list of available tiles.
Alternatively, you can clean your stamp using right-click and select a part of the map that is already tiled to copy it somewhere else.

# Entities #

The second division contains the spawn points, pickups and all elements of your map that can be represented by a unique point.
You add entity layers to it like you add zone layers.
When having selected an entity layer in the asset list, right-click into the map view to select an entity and left-click to set it.
If you are up to set pickups, make sure that you have selected “align the stamp to the grid” in the toolbar to posit the entities accurately.
Most of mods assume that entities are aligned to the grid.

# Background layers #

The third division, “Background Layers”, contains graphics in front of which your tee moves.
You add background layers by two steps that comprise right-clicking on “map” above the four map divisions in the asset list to create a “Background Group” and then right-clicking into the background group that has now appeared in the Background Layers division to add layers there.

If you create a new map, it already contains a quad layer “sky”.
Quad layers often comprise the graphics that move with your tee;
typically, you have a sky and add a sun or stars as quads by assigning images for them in the asset inspector.
The basic sky does not have an image assigned to it because it is a gradiant defined by colors on each vertex of it.
TeeUniverse allows manipulating its color by clicking on the vertices with the “Edit Tool” selectable at the tool bar.

If you add quad layers beside the default sky, you should consider having them grouped separate from each other, so you can decide how much they move away from your tee.
This is done by the parallax values at the right panel.
If a group has parallax values that equal one each, its elements appear static and do move away from your tee as much as your tee moves.
If a group has parallax values that equal zero, its elements chase your tee. The default position of a quad can be set by dragging it with the left mouse button.

You may want to use tile layers to depict walls in front of which the tees sojourn.
For this purpose, select the tile layer in the asset list, assign a tileset image to a tile layer in the asset inspector, choose specific tiles from a tileset with a right click into the map view and apply them with the left mouse button.

# Foreground layers #

The fourth division, “Foreground layers”, contains those graphics hidden by which your tee moves, typically comprising utterly transparent tiles where there are air tiles in the physics zone and skinned tiles where there are ground tiles in the physics zone unless tiles that hide tees are intended.
The way you add layers to the foreground layer division is analogous to the way you add layers to the background layer division.

Assuming usage of foreground layers to delineate tile-based physical boundaries of a map, the way you work here is mainly that you apply the stamp tool for tile layers wherever you have applied it for solid tiles, selecting a tile layer in the asset list, choosing a tile from its tileset image assigned to it in the asset inspector with a right click into the map view and applying it with left clicks, but quad layers are viable, too.

# New images #

If you want to add images not included in TeeUniverse to be chosen as tilesets or elsehow, you have to add the images to the asset list from the “Edit” menu in the menu bar, by clicking “Import Image”, or you add map packages that contain the desired images, but in the latter case you have to make sure that you ship the dependency packages too if you intend sending the map to someone.
When you add an image that you want to use as a tileset of a tile layer, you have to tick “Compatible with tiles” in the asset inspector of that image.


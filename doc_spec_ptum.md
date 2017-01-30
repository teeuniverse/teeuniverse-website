---
layout: default
title: TeeUniverse Portable Map Specification
permalink: /doc/specification/ptum/
creator: necropotame
contentdescription: Authoritative specification of the TeeUniverse Portable Map purported to ease migration of Teeworlds maps
subject: Teeworlds map; map editor; map editing; game map format
---

TeeUniverse Portable Maps (PTUM) are classical TeeWorlds maps that contain extended information for mods.
The format is designed to be fully editable with TeeWorlds map editor and easily integrable in TeeWorlds mods.
Most of informations are stored in groups with a name starting by the character “#”.

# #Zones #

All layers in the group “#Zones” are used by the server to determine zones in the map.
In TeeUniverse, a zone is identified by a name and a set of shapes that contains a zone index.
A typical example is the zone “teeworlds” and its corresponding indices “air”, “ground”, “unhookable ground” and “death”.

The “#Zones” group must be clipped to make sure that player will not see it.
The name of each layer should correspond to the name of the zone, so the server will deduce the type of zone associated to layers in the “#Zones” group.

Tile layers in the group “#Zones” work like the TeeWorlds game layer.
Each tile contains an index, and the whole layer defines a partition of the map space by small squares of a size 32×32.

Quad layers in the group “#Zones” allow to create zones with various shapes and animations.
Since there is no indices in a quad, and given that the color animations have no use in this case,
the attribute “Color TO” of each quad is used to represent the index of each quad.
For example, a quad layer named “teeworlds” that contains a animated quad with “Color TO” equals to “2” will represent a moving death zone.

# #Entities #

All layers in the group “#Entities” are used by the server to create entities.
In TeeUniverse, an entity is identified by a name and a position.
A typical example are entities “spawn”, “shotgun” or “armor”, that the server use to create spawn position or in-game pickups

In PTUM, entities are stored in a quad layers. The name of the quad layer must be the same as the name of the entitiy,
meaning that one layer can store only one type of entities. However, since the “#Entities” group can contains multiple quad layer,
this should not be seen as a limitation.

The barycenter of the quad is used to store the position of the entity. This let the pivot free to be used for animation.

# #Generated #

Groups named “#Generated” must be only created by a server to create additional content for clients.
These groups don’t carry any information for the server, and must be deleted if you want to host a map.

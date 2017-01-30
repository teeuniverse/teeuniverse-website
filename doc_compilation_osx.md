---
layout: default
title: Compilation instruction for OSX
permalink: /doc/compilation/osx/
creator: necropotame
contentdescription: Help page instructing to compile TeeUniverse on an OSX operating system
subject: compilation of TeeUniverse; compilation on OS X; compilation on macOS; compilation; compilation with CMake
---

This page describes how to compile TeeUniverse on OSX

# Installation of needed libraries #

[Follow the instructions to install MacPorts](https://www.macports.org/install.php), then install all libraries using this command:

```
sudo port install cmake git freetype harfbuzz harfbuzz-icu libsdl2 icu
```

# Compilation #

Download the sources using git:
```
git clone https://github.com/teeuniverse/teeuniverse.git
cd teeuniverse
```

Compile the project:
```
cmake .
make
```

Execute the TeeUniverse editor:
```
cd ./build/release/osx
./teeuniverse_editor
```

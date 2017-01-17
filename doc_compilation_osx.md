---
layout: default
title: Compilation instruction for OSX
permalink: /doc/compilation/osx/
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

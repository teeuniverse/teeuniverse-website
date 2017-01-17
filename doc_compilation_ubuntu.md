---
layout: default
title: Compilation instruction for Ubuntu
permalink: /doc/compilation/ubuntu/
---

This page describes how to compile TeeUniverse on Ubuntu 16.04

# Installation of needed libraries #

```
sudo apt-get install build-essential git libfreetype6-dev libharfbuzz-dev libsdl2-dev libicu-dev
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
cd ./build/release/linux
./teeuniverse_editor
```

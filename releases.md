---
layout: default
title: Releases
permalink: /releases/
type: dataset
creator: necropotame
contentdescription: List of the TeeUniverse releases with version history, including links to compressed distributions of their source codes and their binaries
changefreq: weekly
---

{% assign sortedReleases = site.release | sort: 'title' | reverse %}
{% assign latestRelease = sortedReleases.first %}
# {{ latestRelease.title }} (Latest Release) #
{{ latestRelease.content }}


# TeeUniverse cutting edge (Experimental) #

* [Source code (zip)](https://github.com/teeuniverse/teeuniverse/archive/master.zip)
* [Source code (tar.gz)](https://github.com/teeuniverse/teeuniverse/archive/master.tar.gz)


# Older releases #

{% for r in sortedReleases %}
{% if forloop.first == false %}- [{{ r.title }}]({{ r.url }}){% endif %}{% endfor %}

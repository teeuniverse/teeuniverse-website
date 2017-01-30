---
layout: default
title: Downloads
permalink: /downloads2/
---

{% assign sortedReleases = site.release | sort: 'version' | reverse %}
{% assign latestRelease = sortedReleases.first %}
# TeeUniverse {{ latestRelease.version }} (Latest Release) #
{% markdown %}
{{ latestRelease.content }}
{% endmarkdown %}

# Experimental version #


# Older releases #
{% for r in sortedReleases %}
{% if forloop.first == false %}
- [TeeUniverse {{ r.version }}]({{ site.url }}{{ r.url }})
{% endif %}
{% endfor %}

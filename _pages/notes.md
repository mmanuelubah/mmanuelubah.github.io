---
layout: archive
title: "Notes"
permalink: /notes/
author_profile: true
---

{% for note in site.notes %}
- [{{ note.title }}]({{ note.url | relative_url }})
{% endfor %}



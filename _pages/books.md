---
layout: archive
title: "Books"
permalink: /books/
author_profile: true
---

{% for book in site.books %}
- [{{ book.title }}]({{ book.url | relative_url }})
{% endfor %}


---
layout: archive
title: "Books"
permalink: /books/
author_profile: true
---

{% for book in site.books %}
- [{{ book.title }}]({{ book.url | relative_url }})
{% endfor %}

{% assign sorted_books = site.books | sort: 'title' %}
<ul>
{% for book in sorted_books %}
  <li>
    <strong>{{ book.title }}</strong>
    {% if book.status %}
      <span class="book-status {{ book.status | replace: ' ', '-' }}">
        {{ book.status }}
      </span>
    {% endif %}
    {% if book.excerpt %}
      <p>{{ book.excerpt }}</p>
    {% endif %}
  </li>
{% endfor %}
</ul>

---
title: News
navigation_weight: 0
layout: default
---

{% for post in site.posts %}
<div class="card">
    <div class="card-header">{{ post.title }}
        <div class="float-end">{{ post.date | date_to_long_string }}</div>
    </div>
    <div class="card-body">
        {{post.excerpt}}
        <a href="{{ post.url | prepend: site.baseurl }}">Read more</a>
    </div>
    {% if post.tags != empty %}
    <div class="card-footer">
        {% for tag in post.tags %}
        <span class="badge bg-primary">{{ tag }}</span>
        {% endfor %}
    </div>
    {% endif %}
</div>
{% endfor %}

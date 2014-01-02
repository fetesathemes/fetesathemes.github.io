<ul class="nav nav-pills nav-stacked">
  {% for page_1 in site.pages %}
    {% if page_1.menu_depth == 1 %}
      <li><a href="{{ page_1.url }}">{{ page_1.title }}</a></li>
      <ul class="nav nav-pills nav-stacked">
        {% for page_2 in site.pages %}
          {% if page_2.menu_depth == 2 and page_2.menu_parent == page_1.title %}
            <li><a href="{{ page_2.url }}">{{ page_2.title }}</a></li>
            <ul class="nav nav-pills nav-stacked">
              {% for page_3 in site.pages %}
                {% if page_3.menu_depth == 3 and page_3.menu_parent == page_2.title and (page.title == page_3.menu_parent or page.menu_parent == page_3.menu_parent) %}
                  <li><a href="{{ page_3.url }}">{{ page_3.title }}</a></li>
                {% endif %}
              {% endfor %}
            </ul>
          {% endif %}
        {% endfor %}
      </ul>
    {% endif %}
  {% endfor %}
</ul>
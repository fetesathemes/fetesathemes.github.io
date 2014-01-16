<ul class="nav nav-pills nav-stacked">
  {% for sidemenu_1 in site.data.sidemenu %}
    {% for page_1 in site.pages %}
      {% if page_1.url == sidemenu_1[0] %}
        <li><a href="{{ page_1.url }}">{{ page_1.title }}</a></li>
        <ul class="nav nav-pills nav-stacked">
          {% for sidemenu_2 in sidemenu_1[1] %}
            {% for page_2 in site.pages %}
              {% if page_2.url == sidemenu_2[0] %}
                {% assign page_url = page.url | split:"/" %}
                {% assign page2_url = page_2.url | split:"/" %}
                <li {% if page_url[2] == page2_url[2] %}class="active"{% endif %} ><a href="{{ page_2.url }}">{{ page_2.title }}</a></li>
                <ul class="nav nav-pills nav-stacked">
                  {% for sidemenu_3 in sidemenu_2[1] %}
                    {% for page_3 in site.pages %}
                      {% if page_3.url == sidemenu_3 and page_url[2] == page2_url[2] %}
                        <li {% if page.url == page_3.url %}class="active"{% endif %} ><a href="{{ page_3.url }}">{{ page_3.title }}</a></li>
                      {% endif %}
                    {% endfor %}
                  {% endfor %}
                </ul>
              {% endif %}
            {% endfor %}
          {% endfor%}
        </ul>
      {% endif %}
    {% endfor %}
  {% endfor %}
</ul>
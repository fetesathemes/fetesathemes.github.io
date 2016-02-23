<ul class="nav nav-pills nav-stacked">
  {% for root in site.data.sidemenu %}
    {% for root_page in site.pages %}
      {% if root_page.url == root[0] %}
        <li><a href="{{ root_page.url }}">{{ root_page.title }}</a></li>
        <ul class="nav nav-pills nav-stacked">
          {% for section in root[1] %}
            {% for section_page in site.pages %}
              {% if section_page.url == section[0] %}
                {% assign page_url = page.url | split:"/" %}
                {% assign section_page_url = section_page.url | split:"/" %}
                <li {% if page_url[2] == section_page_url[2] %}class="active"{% endif %} ><a href="{{ section_page.url }}">{{ section_page.title }}</a></li>
                <ul class="nav nav-pills nav-stacked">
                  {% for subsection in section[1] %}
                    {% for subsection_page in site.pages %}
                      {% if subsection_page.url == subsection and page_url[2] == section_page_url[2] %}
                        <li {% if page.url == subsection_page.url %}class="active"{% endif %} ><a href="{{ subsection_page.url }}">{{ subsection_page.title }}</a></li>
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

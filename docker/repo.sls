{% from "docker/map.jinja" import docker_settings with context %}

{% if 'repo' in docker_settings %}
dockeriorepo:
  pkgrepo.managed:
{%   for k, v in docker_settings.repo.iteritems() %}
    - {{k}}: {{v}}
{%   endfor %}
{% endif %}

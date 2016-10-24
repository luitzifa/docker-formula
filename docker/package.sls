{% from "docker/map.jinja" import docker_settings with context %}

{% if docker_settings.fromupstream and 'repo' in docker_settings %}
include:
  - .repo

{%   if "deps" in docker_settings %}
docker_deps:
  pkg.installed:
    pkgs: {{ docker_settings.deps }}
{%   endif %}
{% endif %}

docker_pkg:
  pkg.installed:
    - name: {{ docker_settings.pkg if docker_settings.fromupstream else docker_settings.default_pkg }}

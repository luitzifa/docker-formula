{% from "docker/map.jinja" import docker_settings with context %}

include:
  - .package

docker_svc:
  service.running:
    - name: {{ docker_settings.svc }}
    - enable: True
    - require:
      - pkg: docker_pkg

include:
  - .package
  - .service

{% if salt['grains.get']('systemd:version', 0)|int >= 226 %}
/etc/systemd/system/docker.service.d/taskmaxoptimize.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 0644
    - makedirs: True
    - contents: |
        [Service]
        TasksMax=infinity
    - require:
      - pkg: docker_pkg

systemdreload4docker:
  cmd.run:
    - name: "systemctl daemon-reload"
    - onchanges:
      - file: /etc/systemd/system/docker.service.d/taskmaxoptimize.conf
    - watch_in:
      - service: docker_svc
{% endif %}

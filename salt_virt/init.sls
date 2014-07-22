{% from "salt_virt/map.jinja" import map with context %}

include:
  - libvirt

salt_virt_pkgs:
  pkg:
    - installed
    - pkgs: {{ map.pkgs|json }}

salt_virt_keys:
  libvirt:
    - keys
    - require:
      - pkg: libvirt

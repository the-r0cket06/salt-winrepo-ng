{% set versions = [
  '3.5.2',
  '3.5.1',
  '3.5',
  '3.4.6',
  '3.4.5',
  '3.4.4',
  '3.4.3',
  '3.4.2',
  '3.4.1',
  '3.4',
] %}

sumatrapdf:
  {% for version in versions %}
  '{{ version }}':
  full_name: 'SumatraPDF'
  {% if grains['cpuarch'] == 'AMD64' %}
  installer: 'https://www.sumatrapdfreader.org/dl/rel/{{ version }}/SumatraPDF-{{ version }}-64-install.exe'
  {% else  %}
  installer: 'https://www.sumatrapdfreader.org/dl/rel/{{ version }}/SumatraPDF-{{ version }}-install.exe'
  {% endif %}
  install_flags: '-s -all-users'
  uninstaller: '%ProgramFiles%\SumatraPDF\SumatraPDF.exe'
  uninstall_flags: '-x'
  {% endfor %}

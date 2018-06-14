project('lollypop-portal',
  version: '0.9.7_redux',
  meson_version: '>= 0.40.0'
)
python = import('python3')

message('Looking for dependencies')
dependency('python3')
dependency('gobject-introspection-1.0', version: '>=1.35.9')
dependency('gtk+-3.0', version :'>=3.14')

python_dir = join_paths(get_option('prefix'), python.sysconfig_path('purelib'))
service_dir = join_paths(get_option('datadir'), 'dbus-1', 'services')
libexec_dir = join_paths(get_option('prefix'), get_option('libexecdir'))

conf = configuration_data()
conf.set('pythondir', python_dir)
conf.set('pyexecdir', join_paths(get_option('prefix'), python.sysconfig_path('stdlib')))
conf.set('libexecdir', libexec_dir)


message('Preparing init file')
configure_file(
  input: 'lollypop-portal.in',
  output: 'lollypop-portal',
  configuration: conf,
  install_dir: libexec_dir
)

configure_file(
  input: 'org.gnome.Lollypop.Portal.service.in',
  output: 'org.gnome.Lollypop.Portal.service',
  configuration: conf,
  install_dir: service_dir
)

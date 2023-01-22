project('meson-introspect-bug', 'c',
  version : '0.1',
  default_options : ['warning_level=3'])

cc = meson.get_compiler('c')

if host_machine.system() == 'darwin'
  add_languages('objc', required: false, native: false)
endif

exe = executable('meson_introspect_bug', 'meson_introspect_bug.c',
  install : true)

test('basic', exe)

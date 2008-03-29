begin
  has_tk = compiled?('tk')
rescue NoMethodError
  # Probably, called manually (NOT from 'extmk.rb'). Force to make Makefile.
  has_tk = true
end

if has_tk
  require 'mkmf'
  have_func("rb_obj_instance_exec", "ruby.h")
  create_makefile('tkutil')
end

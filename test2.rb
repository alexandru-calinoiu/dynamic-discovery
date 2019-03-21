require 'json'

original_implementations = {}
Hash.instance_methods.each do |m| 
  original_implementations[m] = Hash.instance_method(m)
end

require 'json_sorted'

updated_implementations = {}
Hash.instance_methods.each do |m| 
  instance_method = Hash.instance_method(m)
  updated_implementations[m] = instance_method if original_implementations[m] != instance_method
end

p updated_implementations
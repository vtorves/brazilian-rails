require 'test/unit'
require File.dirname(__FILE__) + '/../lib/brtraducao'
require File.dirname(__FILE__) + '/../lib/brtraducao/inflector_portuguese'

require 'rubygems'  
require 'action_pack'
require 'action_controller/assertions'

def tornar_metodos_publicos(clazz)
  clazz.class_eval do
    private_instance_methods.each { |instance_method| public instance_method }
    private_methods.each { |method| public_class_method method } 
  end  
end

def p80 text
  p '*'*80
  p text
  p '*'*80
end
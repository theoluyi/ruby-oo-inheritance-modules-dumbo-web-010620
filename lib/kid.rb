require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'


class Kid
  # include Dance
  # extend MetaDancing

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end


# FIRST
# first of all, I don't know how to reference dance_module
# since import syntax differs from javascript, we don't assign
# a variable name to dance module in the import statement

# SECOND
# let's say we did, and it's just dance_module
# would we know how to method from that module and compose
# class kid with that method inside?

# this is a guess but this isn't DRY
# def twirl
#   dance_module.twirl
# end

# Answer to SECOND
# If we use include keyword, we allow our classes to use all of
# the methods of the included module as instance methods.
# We'll talk about how to lend a module's methods as class
# methods in a minute.

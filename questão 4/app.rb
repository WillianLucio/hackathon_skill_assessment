# frozen_string_literal: true

class Action
  ACTIONS = {
    type_one: TypeOne.new,
    type_two: TypeTwo.new
  }.freeze

  def initialize(type)
    @type = type
  end
    
  def call
    ACTIONS[@type].call
  end
end

class TypeOne
  def call; end
end

class TypeTwo
  def call; end
end

Action.new(:type_two).call
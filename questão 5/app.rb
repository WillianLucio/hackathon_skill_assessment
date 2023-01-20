# frozen_string_literal: true

class Person
  attr_accessor :document

  def initialize(document)
    @document = document
  end
end

class PhysicalPerson < Person
  def valid; end
end

class LegalPerson < Person
  def valid; end
end

PhysicalPerson.new('284.376.470-02').valid
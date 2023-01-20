# frozen_string_literal: true

require 'csv'

class Generator
  def initialize(strategy, file_name, products)
    @strategy = strategy
    @products = products
    @file_name = file_name
  end

  def write
    @strategy.write(@file_name, @products)
  end
end

class CsvFormatter
  def self.write(file_name, products)
    CSV.open(file_name, "wb") do |csv|
      products.each do |product|
        csv << [
          product[:id],
          product[:name],
          product[:description]
        ]
      end
    end
  end
end

products = [
  { id: 'id', name: 'name', description: 'description' },
  { id: '1', name: 'Boné', description: 'Aba reta' },
  { id: '2', name: 'Camisa', description: 'Gola polo branca' }
]

Generator.new(CsvFormatter, 'product.csv', products).write
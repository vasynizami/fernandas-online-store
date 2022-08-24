class Product < ActiveRecord::Base
    monetize :price_cents
    has_and_belongs_to_many :orders
    belongs_to :category
  end
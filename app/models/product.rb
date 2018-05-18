class Product < ApplicationRecord
  has_many :orders
  def self.dev_search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end
  def self.prod_search(search_term)
    Product.where("name ilike ?", "%#{search_term}%")
  end
end

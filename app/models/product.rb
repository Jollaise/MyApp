class Product < ApplicationRecord
  has_many :orders
  has_many :comments
  def self.dev_search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end
  def self.prod_search(search_term)
    Product.where("name ilike ?", "%#{search_term}%")
  end
  def highest_rating_comment
    comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_asc.first
  end
end

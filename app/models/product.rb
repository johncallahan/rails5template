class Product < ApplicationRecord
  searchkick

  has_many_attached :uploads
end

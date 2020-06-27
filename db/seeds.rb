names = 1.upto(10).map { FFaker::Product.brand }
sizes = ["XS", "S", "M", "L", "XL", "XXL"]

Product.delete_all

ApplicationRecord.transaction do
  10.times do
    Product.create(
      name: names.sample,
      size: sizes.sample,
      amount: rand(200..4000),
    )
  end
end

#Product.reindex
# heroku run rake searchkick:reindex:all
# rake searchkick:reindex:all

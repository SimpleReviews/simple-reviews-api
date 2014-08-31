category = Category.where(
  name: 'Wearables'
).first_or_create

product = Product.where(
  name: 'Fitbit',
  category: category,
  instagram_tag: 'fitbit'
).first_or_create

review = Review.where(
  body: 'Keeps me in shape',
  review_type: 'positive',
  product: product
).first_or_create

review = Review.where(
  body: 'Android app sucks',
  review_type: 'negative',
  product: product
).first_or_create

user = User.where(
  username: 'chadtmiller',
  email: 'chadtmiller15@gmail.com'
).first_or_create

user.password = 'password'
user.save

category = Category.where(
  name: 'Wearables'
).first_or_create

product = Product.where(
  name: 'Fitbit',
  category: category,
  instagram_tag: 'fitbit',
  user: user
).first_or_create

review = Review.where(
  body: 'Keeps me in shape',
  review_type: 'positive',
  product: product,
  user: user
).first_or_create

review = Review.where(
  body: 'Android app sucks',
  review_type: 'negative',
  product: product,
  user: user
).first_or_create

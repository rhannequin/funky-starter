admin = User.create(
  name: 'rhannequin',
  email: 'hello@rhannequ.in',
  password: 'password'
)
puts "Created user #{admin.name}."

admin.add_role(:admin)
puts "Added role :admin to user #{admin.name}."

Setting.create(email: admin.email)
puts "Created settings with email #{admin.email}."

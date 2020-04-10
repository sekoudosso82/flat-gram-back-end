# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user4 = User.create(name: 'Granit', 
#                     userName: 'ghaxhaj', 
#                     password: '1234', 
#                     email: 'ghaxhaj@fordham.edu', 
#                     imageUrl: 'https://media-exp1.licdn.com/dms/image/C4E03AQFmaTZS0oBBsw/profile-displayphoto-shrink_200_200/0?e=1587600000&v=beta&t=H8qsIYaycCHeLwsEV_u5_lr50EkNQKdNpVv8xLgOd98')



                    post1 = Post.create(user_id: 1, 
                                        content: 'https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2020%2F01%2Flil-uzi-vert-eternal-atake-album-release-rumors-speculation-drop-1.jpg?quality=95&w=1170&cbr=1&q=90&fit=max',
                                        user_caption: "I love uzi!!!!")  

User.delete_all
Post.delete_all
Color.delete_all

require 'digest/md5'

password_hash = Digest::MD5.hexdigest( "password" )

user1 = User.create(username: "Eric", password_hash: password_hash)
user2 = User.create(username: "Jeff", password_hash: password_hash)
user3 = User.create(username: "Melinda", password_hash: password_hash)

user1.posts.create(title: "Hello World!", content: "No colors yet...")
user2.posts.create(title: "Oh hi", content: "I like all-white")
user3.posts.create(title: "Moving ot SF!", content: "Bye Felicia")

colors = Color.create([{
    color_name: 'red',
    color_info: '#c22047'
  },{
    color_name: 'turq',
    color_info: '#20c29b'
  },{
    color_name: 'violet',
    color_info: '#4f20c2'
  }])

user1.colors.push(colors[0], colors[2])
user2.colors.push(colors[3], colors[2])
user3.colors.push(colors[3], colors[0])

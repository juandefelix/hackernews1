User.create(username: "Juan", password: "1234")
User.create(username: "Lydia", password: "1234")

Post.create(user_id: 1, link:"http://www.google.com", title:"google")
Post.create(user_id: 1, link:"http://www.cnn.com", title:"cnn")

Comment.create(text: "i'm a comment", user_id: 1, post_id: 1)
Comment.create(text: "i'm a comment on the second post", user_id: 2, post_id: 2)

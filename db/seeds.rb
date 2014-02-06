User.create(username: "Juan", password: "1234")
User.create(username: "Lydia", password: "1234")

Post.create(user_id: 1, link:"http://www.google.com", title:"google")
Postvote.create(post_id: 1)
Post.create(user_id: 1, link:"http://www.cnn.com", title:"cnn")
Postvote.create(post_id: 2)

Comment.create(text: "i'm a comment", user_id: 1, post_id: 1)
Commentvote.create(comment_id: 1)
Comment.create(text: "i'm a comment on the second post", user_id: 2, post_id: 2)
Commentvote.create(comment_id: 2)


post = Post.create(
	title: "Hello World",
	author: "Jane Birkin",
	content: "Lorem Ipsum dolar sit amet."
)
post.comments.create(
	author: "Gentlemen",
	content: "content of the blog",
	post_id: 1
)	
post.comments.create(
	author: "James Dean",
	content: "more content",
	post_id: 2
)	
# frozen_string_literal: true

# Users
users = User.create!([
                       { name: 'Alice', email: 'alice@example.com' },
                       { name: 'Bob', email: 'bob@example.com' },
                       { name: 'Charlie', email: 'charlie@example.com' },

                       { name: 'Dave', email: 'dave@example.com' },
                       { name: 'Ella', email: 'ella@example.com' },
                       { name: 'Frank', email: 'frank@example.com' },

                       { name: 'Grace', email: 'grace@example.com' },
                       { name: 'Hank', email: 'hank@example.com' },
                       { name: 'Ivy', email: 'ivy@example.com' }
                     ])

# Posts
posts = Post.create!([
                       { user: users[0], title: "Alice's first post", body: "Content of Alice's first post" },
                       { user: users[1], title: "Bob's first post", body: "Content of Bob's first post" },
                       { user: users[2], title: "Charlie's first post", body: "Content of Charlie's first post" },

                       { user: users[3], title: "Dave's first post", body: "Content of Dave's first post" },
                       { user: users[4], title: "Ella's first post", body: "Content of Ella's first post" },
                       { user: users[5], title: "Frank's first post", body: "Content of Frank's first post" },

                       { user: users[6], title: "Grace's first post", body: "Content of Grace's first post" },
                       { user: users[7], title: "Hank's first post", body: "Content of Hank's first post" },
                       { user: users[8], title: "Ivy's first post", body: "Content of Ivy's first post" }
                     ])

# Comments
Comment.create!([
                  # Comments on Alice's first post
                  { post: posts[0], user: users[1], content: 'Great post, Alice!' },
                  { post: posts[0], user: users[2], content: 'Thanks for sharing!' },
                  { post: posts[0], user: users[3], content: 'Nice thoughts, Alice!' },

                  # Comments on Bob's first post
                  { post: posts[1], user: users[0], content: 'Nice post, Bob!' },
                  { post: posts[1], user: users[2], content: 'Interesting topic, Bob!' },
                  { post: posts[1], user: users[4], content: 'I totally agree, Bob!' },

                  # Comments on Charlie's first post
                  { post: posts[2], user: users[5], content: 'Well said, Charlie!' },
                  { post: posts[2], user: users[6], content: 'Thanks for writing this!' },
                  { post: posts[2], user: users[7], content: 'This is so helpful!' },

                  # Comments on Dave's first post
                  { post: posts[3], user: users[0], content: 'Good points, Dave!' },
                  { post: posts[3], user: users[1], content: 'Very insightful post!' },
                  { post: posts[3], user: users[8], content: 'Great work, Dave!' },

                  # Comments on other posts
                  { post: posts[4], user: users[3], content: 'Cool idea, Ella!' },
                  { post: posts[5], user: users[4], content: 'I learned a lot, Frank!' },
                  { post: posts[6], user: users[5], content: 'Grace, this is awesome!' }
                ])

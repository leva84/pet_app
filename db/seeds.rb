# frozen_string_literal: true

# 1. Создаём роли пользователей
roles = Role.create!([
                       { name: 'Author' },
                       { name: 'Moderator' },
                       { name: 'Admin' }
                     ])
puts 'Roles created'

# 2. Создаём категории постов
categories = Category.create!([
                                { name: 'Technology' },
                                { name: 'Lifestyle' },
                                { name: 'Education' },
                                { name: 'Health & Fitness' },
                                { name: 'Food' }
                              ])
puts 'Categories created'

# 3. Создаём пользователей с ролями
users = User.create!([
                       { name: 'Alice', email: 'alice@example.com', role: roles[0] },
                       { name: 'Bob', email: 'bob@example.com', role: roles[0] },
                       { name: 'Charlie', email: 'charlie@example.com', role: roles[0] },
                       { name: 'Dave', email: 'dave@example.com', role: roles[1] },
                       { name: 'Ella', email: 'ella@example.com', role: roles[1] },
                       { name: 'Frank', email: 'frank@example.com', role: roles[2] },
                       { name: 'Grace', email: 'grace@example.com', role: roles[2] },
                       { name: 'Hank', email: 'hank@example.com', role: roles[0] },
                       { name: 'Ivy', email: 'ivy@example.com', role: roles[1] },
                       { name: 'Jack', email: 'jack@example.com', role: roles[0] },
                       { name: 'Karen', email: 'karen@example.com', role: roles[1] },
                       { name: 'Luke', email: 'luke@example.com', role: roles[2] }
                     ])
puts 'Users created'

# 4. Создаём посты с категориями
posts = Post.create!([
                       { user: users[0], title: "Alice's first post", body: "Content of Alice's first post",
                         category: categories[0] },
                       { user: users[0], title: "Alice's guide to Ruby",
                         body: 'Tips and tricks about Ruby programming!', category: categories[2] },
                       { user: users[1], title: "Bob's fitness routine",
                         body: 'How to stay fit while working full-time.', category: categories[3] },
                       { user: users[2], title: "Charlie's cooking tips", body: 'How to cook the perfect pasta.',
                         category: categories[4] },
                       { user: users[3], title: "Dave's technology review",
                         body: 'Analyzing the latest gadgets of 2023.', category: categories[0] },
                       { user: users[4], title: "Ella's healthy lifestyle",
                         body: 'How to live a healthy and balanced life.', category: categories[3] },
                       { user: users[5], title: "Frank's favorite books", body: 'Top 10 books you must read.',
                         category: categories[2] },
                       { user: users[6], title: "Grace's gardening tips",
                         body: 'How to grow your garden the right way.', category: categories[4] },
                       { user: users[7], title: "Hank's meditation guide",
                         body: 'Find your inner peace with meditation.', category: categories[3] },
                       { user: users[8], title: "Ivy's lifestyle blog", body: 'Secrets to a joyful lifestyle.',
                         category: categories[1] },
                       { user: users[9], title: "Jack's adventures in food", body: 'Exploring the world through food.',
                         category: categories[4] },
                       { user: users[10], title: "Karen's coding journey", body: "A beginner's guide to coding.",
                         category: categories[2] },
                       { user: users[11], title: "Luke's admin tips",
                         body: 'How to manage your digital life effectively.', category: categories[0] }
                     ])
puts 'Posts created'

# 5. Создаём комментарии
comments = Comment.create!([
                             { post: posts[0], user: users[1], content: 'Great post, Alice!' },
                             { post: posts[0], user: users[2], content: 'This was so helpful, thanks Alice!' },
                             { post: posts[2], user: users[3], content: 'Nice tips, Bob!' },
                             { post: posts[3], user: users[4], content: 'I love cooking pasta too, Charlie!' },
                             { post: posts[4], user: users[5], content: 'Thanks for the gadget reviews, Dave!' },
                             { post: posts[1], user: users[6], content: 'Ruby is an amazing language!' },
                             { post: posts[5], user: users[7], content: 'Health is so important, Ella. Great post!' },
                             { post: posts[8], user: users[1], content: 'Meditation changed my life!' },
                             { post: posts[9], user: users[8], content: 'This blog is inspiring, Ivy!' },
                             { post: posts[10], user: users[2],
                               content: 'Food is a magical part of life. Love this, Jack!' },
                             { post: posts[0], user: users[9], content: 'Really well-written, Alice!' },
                             { post: posts[1], user: users[10], content: 'Learning so much from this!' },
                             { post: posts[11], user: users[4], content: 'Great tips for admins!' },
                             { post: posts[10], user: users[11], content: 'Food adventures are the best!' },
                             { post: posts[0], user: users[0], content: 'Thank you all for your kind words!' }
                           ])
puts 'Comments created'

# 6. Создаём голоса
Vote.create!([
               { comment: comments[0], user: users[2], value: 1 },
               { comment: comments[1], user: users[3], value: -1 },
               { comment: comments[2], user: users[4], value: 1 },
               { comment: comments[3], user: users[5], value: 1 },
               { comment: comments[4], user: users[6], value: 1 },
               { comment: comments[5], user: users[7], value: -1 },
               { comment: comments[6], user: users[8], value: 1 },
               { comment: comments[7], user: users[9], value: 1 },
               { comment: comments[8], user: users[10], value: -1 },
               { comment: comments[9], user: users[11], value: 1 },
               { comment: comments[10], user: users[1], value: 1 },
               { comment: comments[11], user: users[2], value: -1 },
               { comment: comments[12], user: users[3], value: 1 },
               { comment: comments[1], user: users[10], value: 1 },
               { comment: comments[6], user: users[5], value: -1 }
             ])
puts 'Votes created'

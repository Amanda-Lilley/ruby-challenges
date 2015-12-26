class BlogPost

  attr_accessor :title, :content, :author, :publish_date
  @@blog_post_archive = []
  @@total_blog_posts = 0

  def self.publish
      @@blog_post_archive.each do |blog_post|
      puts blog_post
    end
  end

  def self.save(blog_post)
    @@blog_post_archive << blog_post
    @@total_blog_posts += 1
    publish
  end

  def self.create
    blog_post = self.new
    puts "Please fill out your blog information."
    print "Title: "
    blog_post.title = gets.chomp
    print "Content: "
    blog_post.content = gets.chomp
    print "Author: "
    blog_post.author = gets.chomp
    print "Publish_date: "
    blog_post.publish_date = gets.chomp
    blog_post = "#{blog_post.title}, #{blog_post.content}, #{blog_post.author}, #{blog_post.publish_date}"
    save(blog_post)
  end

end

  puts "Would you like to create a new blog post? Y/N"
  answer = gets.chomp.downcase
  if answer == "y"
    blog_post = BlogPost.create
  end

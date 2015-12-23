class BlogPost

  attr_accessor :title, :content, :author, :publish_date
  @@blog_post_archive = []
  @@total_blog_posts = 0

  def initialize
    @title = title
    @content = content
    @author = author
    @publish_date = publish_date
  end

  def publish
      @@blog_post_archive.each do |blog_post|
      puts blog_post
    end
  end

  def save(blog_post)
    @@blog_post_archive << blog_post
    @@total_blog_posts += 1
    publish
  end

  def create
    puts "Please fill out your blog information."
    print "Title: "
    title = gets.chomp
    print "Content: "
    content = gets.chomp
    print "Author: "
    author = gets.chomp
    print "Publish_date: "
    publish_date = gets.chomp
    blog_post = ("#{title}, #{content}, #{author}, #{publish_date}")
    save(blog_post)
  end

end

  puts "Would you like to create a new blog post? Y/N"
  answer = gets.chomp.downcase
  if answer == "y"
    blog_post = BlogPost.new
    blog_post.create
  end

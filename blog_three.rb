# creates a new class BlogPost
class BlogPost

# creates getter and setters for title, content, author, and publish_date
  attr_accessor :title, :content, :author, :publish_date
  @@blog_post_archive = []
  @@total_blog_posts = 0

# outputs the content of each blog post stored in
# the class variable @@blog_post_archive
  def self.publish
      @@blog_post_archive.each do |blog_post|
      puts blog_post
    end
  end

# sends the new blog post to be stored in the @@blog_post_archive
  def save
    @@blog_post_archive << self #why do we use self instead of blog_post?
    @@total_blog_posts += 1 #increments the blogpost total by 1
    publish # calls the publish function
  end

  def self.create
    blog_post = self.new # creates a new instance of BlogPost
    puts "Please fill out your blog information."
    print "Title: "
    blog_post.title = gets.chomp
    print "Content: "
    blog_post.content = gets.chomp
    print "Author: "
    blog_post.author = gets.chomp
    print "Publish_date: "
    blog_post.publish_date = gets.chomp
    # stores and assigns the collected value of blog_post
    blog_post = "#{blog_post.title}, #{blog_post.content}, #{blog_post.author}, #{blog_post.publish_date}"
    blog_post.save # calls the save function on blog_post
  end

end

  puts "Would you like to create a new blog post? Y/N"
  answer = gets.chomp.downcase
  if answer == "y"
    blog_post = BlogPost.create
  end

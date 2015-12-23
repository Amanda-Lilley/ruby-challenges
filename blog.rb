class Blog

  @@blog_archive = []
  @@total_blog_posts = 0

  def self.all
    @@blog_archive
  end

  def self.add(musing)
    @@blog_archive << musing
    @@total_blog_posts += 1
  end

  def self.publish
    @@blog_archive.each do |blog|
      puts "Title: #{blog.title}"
      puts "Author: #{blog.author}"
      puts "Publish Date: #{blog.created_at}"
    end
end

class BlogPost < Blog

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def created_at=(created_at)
    @created_at = created_at
  end

  def created_at
    @created_at
  end

  def content=(content)
    @content = content
  end

  def content
    @content
  end

  def save
    BlogPost.add(self)
  end

end

def self.create
  blog = new
  puts "What is the title of your blog?"
  blog.title = gets.chomp
  puts "Blog content:"
  blog.content = gets.chomp
  puts "Written by:"
  blog.author = gets.chomp
  blog.created_at = Time.now
  blog.save
  puts "Would you like to create another blog post? [Y/N]"
  create if gets.chomp.downcase == "y"
end

BlogPost.create
blog_archive = BlogPost.all
BlogPost.publish

end

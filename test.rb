hash = { one:1, two:2, three:3} 
puts hash.keys
puts hash.values

user_data = [
  {user: {profile: {name: 'George'}}},
  {user: {profile: {name: 'Alice'}}},
  {user: {profile: {name: 'Taro'}}},
 ]

# 二重ハッシュの場合はキーを連続して指定する
user_data.each do |u|
  puts u[:user][:profile][:name]
end

class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end
  
  def author
    @author
  end

  def title
    @title
  end

  def content
    @content
  end

end

article = Article.new("阿部","Rubyの素晴らしさについて","Awesome Ruby!")
puts "著者: #{article.author}"
puts "タイトル: #{article.title}"
puts "本文: #{article.content}"
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

require "date"

day = Date.today.wday
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if day == 5 
  puts "今日は#{days[day]}だ!!!"
else
  puts "今日は#{days[day]}"
end

a = 1
b = 2
unless  a + b <= 0
  puts "計算結果は0より大きいです"
end

sum = 0
10.times do |i|
 sum += i + 1
end
puts sum
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

def search(target_num, input)
  input.each_with_index  do |num, index|
    if num == target_num
      puts "#{index + 1}番目にあります"
      return
    end
  end
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
search(11, input)
search(21, input)

def check_name(str) 
  if str.include?(".")
    puts "!エラー!記号は登録できません"
  elsif str.include?(" ")
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end
end
puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str)

input = gets.to_i

if input <= 0
  puts "0以下の数字です"
elsif input <= 10
  puts "10以下の数字です"
else input > 10
  puts "10より大きい数字です"
end

fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end

def in1to10(num, outside_mode)
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
in1to10(5,false)
in1to10(11,false)
in1to10(11,true)

class Fruit

  def self.fresh
    puts "採れたて新鮮な果実です"
  end
 
  def initialize(name, price)
    @name = name
    @price = price
  end
 
  def introduce
    puts "#{@name}は#{@price}円です"
  end
 end
 
 apple = Fruit.new("リンゴ", 120)
 orange = Fruit.new("オレンジ", 200)
 strawberry = Fruit.new("イチゴ", 60)
 
 Fruit.fresh
 apple.introduce
 orange.introduce
 strawberry.introduce

 def missing_char(str, n)
  str.slice!(n - 1)
  puts str
end

# 呼び出し例
missing_char('kitten', 1)

def count_code(str)
  puts str.index("code", 0) + 1
end

def parrot_trouble(talking, hour)
  if talking && (hour < 7 || hour > 20)
    puts "NG"
  else
    puts "OK"
  end
end

# 呼び出し例
parrot_trouble(true, 6)

def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end     
  end
  puts count
end

def array123(nums)
  if nums.include?(1)
  
  end
end

# 呼び出し例
array123([1, 1, 2, 3, 1]
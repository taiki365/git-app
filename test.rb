#Rubyドリル1
hash = { one:1, two:2, three:3} 
puts hash.keys
puts hash.values


#Rubyドリル2
user_data = [
  {user: {profile: {name: 'George'}}},
  {user: {profile: {name: 'Alice'}}},
  {user: {profile: {name: 'Taro'}}},
]

# 二重ハッシュの場合はキーを連続して指定する
user_data.each do |u|
  puts u[:user][:profile][:name]
end


#Rubyドリル3
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


#Rubyドリル4
require "date"

day = Date.today.wday
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if day == 5 
  puts "今日は#{days[day]}だ!!!"
else
  puts "今日は#{days[day]}"
end


#Rubyドリル5
a = 1
b = 2
unless  a + b <= 0
  puts "計算結果は0より大きいです"
end


#Rubyドリル6
sum = 0
10.times do |i|
sum += i + 1
end
puts sum


#Rubyドリル7
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


#Rubyドリル8
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


#Rubyドリル9
input = gets.to_i

if input <= 0
  puts "0以下の数字です"
elsif input <= 10
  puts "10以下の数字です"
else input > 10
  puts "10より大きい数字です"
end


#Rubyドリル10
fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end


#Rubyドリル11
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


#Rubyドリル12
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


#Rubyドリル13
def missing_char(str, n)
  str.slice!(n - 1)
  puts str
end

# 呼び出し例
missing_char('kitten', 1)


#Rubyドリル14
def police_trouble(a, b)
  if (a && b) || (!a && !b)
    puts "True"
  else
    puts "false"
  end
end

# 呼び出し例
police_trouble(true, true) 
police_trouble(false, false)
police_trouble(true, false)


#Rubyドリル15
def count_hi(str)
  puts str.scan("hi").length
end

# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi ho')


#Rubyドリル16
def count_code(str)
  puts str.index("code", 0) + 1
end


#Rubyドリル17
def parrot_trouble(talking, hour)
  if talking && (hour < 7 || hour > 20)
    puts "NG"
  else
    puts "OK"
  end
end

# 呼び出し例
parrot_trouble(true, 6)


#Rubyドリル18
def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end     
  end
  puts count
end


#Rubyドリル19
def array123(nums)
  if nums.include?(1) && nums.include?(2) && nums.include?(3)
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
array123([1, 1, 2, 3, 1]


#Rubyドリル20
def sleep_in(is_weekday, is_vacation)
  if (is_weekday != true) || (is_vacation == true)
    puts true
  else
    puts false
  end
end

# 呼び出し例
sleep_in(false, false)


#Rubyドリル21
def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  tens_place = (num / 10) % 10
  # 1の位
  ones_place = num % 10
  return tens_place, ones_place
end

puts "二桁の整数を入力して下さい"
input = gets.to_i
X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"


#Rubyドリル22
def extra_end(str)
  char_num = str.length
  #文字列の後ろから2番目を取得
  teel2 = str.slice(char_num - 2, 2)
  puts teel2 * 3
end

# 呼び出し例
extra_end('Hello')


#Rubyドリル23
def num(a, b, c)
  ab = a + b
  if c >= 3
    puts ab / c
  else
    puts ab * c
  end
end

# 呼び出し例
num(1,5,3) 
num(1,5,5)


#Rubyドリル24
def calculate_points(amount, is_birthday)
  if amount >= 999
    point = (amount * 0.03)
  else
    point = (amount * 0.05)
  end
  if is_birthday
    point = point * 5
  end
  puts "ポイントは#{point.floor}点です"
end


#Rubyドリル25
def fizz_buzz
  i = 1
  while i <= 100 do
    if i % 15 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end

    i += 1
  end
end

fizz_buzz


#Rubyドリル26
def end_other(a, b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if b_down.slice(-(a_len)..- 1) == a_down || a_down.slice(-(b_len)..- 1) == b_down
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
end_other('Hiabc', 'abc')


#Rubyドリル27
def near_ten(num)
  remainder = num % 10
  if remainder <= 2 || remainder >= 8
    puts "True"
  else
    puts "False"
  end
end


#Rubyドリル28
def withdraw(balance, amount)
  fee = 110  # 手数料
  if balance >= (amount + fee)
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  elsif
    puts "残高不足です"
  end
end

balance = 100000  # 残高
puts "いくら引き落としますか？（手数料110円かかります）"
amount = gets.to_i
withdraw(balance, amount)


#Rubyドリル29
def lone_sum(ary)
  # 配列から、重複しない要素のみ取り出す
  uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end

  # nuiq_nums配列内の合計
  sum = 0
  uniq_nums.each do |uniq_num|
    sum += uniq_num
  end
  puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])


#Rubyドリル30
def binary_search(array, right, target)
  left = 0
  while left <= right
    center = (left + right) / 2
    if array[center] == target
      return center
    elsif array[center] < target
      left = center + 1
    else
      right = center - 1
    end
  end
  return -1
end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
target = gets.to_i
number_of_elements = array.length

result = binary_search(array, number_of_elements, target)

if result == -1
  puts "#{target}は配列内に存在しません"
else
  puts "#{target}は配列の#{result}番目に存在します"
end


#Rubyドリル31
def near_ten(num)
  #100の位、10の位、1の位をそれぞれ足す
  total = (num/100) + (num/10 % 10) + (num % 10)
  #3つの数の和の1の位を出す
  remainder = total % 10
  #差が2以下ならTrueを出力
  if remainder <= 2 || remainder >= 8
    puts "True"
  elsif remainder <= 5
    puts "10の倍数とに差は#{remainder}です"
  else
    puts "10の倍数との差は#{10 - remainder}です"
  end
end


#Rubyドリル32
def xyz_there(str)
  #.include?()とすることで()の中の文字が含まれているか判定出来る
  #("xyz")を先にするとその処理で止まってしまう
  if str.include?(".xyz")
    puts "False"
  elsif str.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
xyz_there('abcxyz')


#Rubyドリル33
def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2
    if year % 4 == 0
      if year % 100 == 0 && year % 400 != 0
        days = 28
      else
        days = 29
      end
    else
      days = 28
    end
  else
    dyas == month_days[month - 1]
  end

  return days
end

puts "年を入力してください:"
year = gets.to_i
puts "月を入力してください:"
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"


#Rubyドリル34
def judge (a,b,c)
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if x == 1 && z >= 2
    puts "True"
  elsif y == 1 && z >= 2
    puts "True"
  else
    puts "False"
  end
end


#Rubyドリル35
def registration_student(students)
  # 生徒の名前と年齢を登録できるようにする
  student = {}
  puts '生徒名を入力してください'
  student[:name] = gets.chomp
  puts '生徒の年齢を入力してください'
  student[:age] = gets.chomp

  # 登録した生徒の国語、数学、英語の点数を登録できるようにする
  puts "国語の得点は？"
  student[:japanese] = gets.to_i
  puts "数学の得点は？"
  student[:math] = gets.to_i
  puts "英語の得点は？"
  student[:english] = gets.to_i
  students << student

end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示する
  i = 0
  students.each do |student|
    puts "#{i}: #{student[:name]}"
    i += 1
  end
  puts '見たい生徒の番号を入力してください'
  num = gets.to_i

  student = students[num]
  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにする
  puts "名前: #{student[:name]}"
  puts "年齢: #{student[:age]}"
  puts "国語: #{student[:japanese]}"
  puts "数学: #{student[:math]}"
  puts "英語: #{student[:english]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    exit
  else
    puts '無効な値です'
  end
end
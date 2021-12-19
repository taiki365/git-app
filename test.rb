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
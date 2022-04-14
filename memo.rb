require "csv"
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type= gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイル名を入力してください"
  memo_type = gets.chomp
  CSV.open("#{memo_type}.csv","w") do | csv |
  end
    
  str  = memo_type
  puts "メモしたい内容を記入してください"
  puts "完了後、Ctrl + Dを押します"
  memo_type = $stdin.read
  CSV.open("#{str}.csv","w") do | csv |
    csv << ["#{memo_type}"]
  end
    
elsif memo_type == "2"
  puts "編集したいファイル名を入力してください"
  memo_type= gets.chomp
  CSV.open("#{memo_type}.csv","a") do | csv |
  end
    
  str  = memo_type
  puts "編集内容を記入してください"
  puts "完了後、Ctrl + Dを押します"
  memo_type = $stdin.read
  CSV.open("#{str}.csv","a") do | csv |
    csv << ["#{memo_type}"]
  end
    
else 
  puts "エラー"
end
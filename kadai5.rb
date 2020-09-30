class Menu
  attr_accessor :name
  attr_accessor :price
  
  def initialize(name:, price:)
    self.name = name
    self.price = price
  end
  
  def info
    return "#{self.name} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  
  # initializeメソッドをオーバーライドする
  def initialize(name:, price:, size:) 
    super(name: name, price: price)  
    self.size = size
  end
  
  
  def info
    return "#{self.name} #{self.price}vnd (#{self.size}サイズ)"
  end
end

menu1 = Menu.new(name: "Phở", price: 30000)
menu2 = Menu.new(name: "Bún chả", price: 40000)
menu3 = Menu.new(name: "bánh mì", price: 20000)

# Drinkの変数を定義してください

drink1 = Drink.new  name: "tra", price: 5000, size: "S"
drink2 = Drink.new  name: "tra", price: 10000, size: "M"

menus = [menu1, menu2, menu3, drink1, drink2]

# 変数menusを定義して配列を代入してください


menus.each do |menu|
  puts "#{menu.info}"
end
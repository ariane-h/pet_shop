require('pry-byebug')

# 1- find shop name
def pet_shop_name(shop)
  shop[:name]
end

# 2 - add up total cash
def total_cash(till)
  till[:admin][:total_cash]
end

#3 - add or remove cash
def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

# 4 - find number of pets sold
def pets_sold(shop)
  shop[:admin][:pets_sold]
end

# 5 - increase pets sold
def increase_pets_sold(shop, amount= 1)
  shop[:admin][:pets_sold] += amount
end

# 6 - stock count
def stock_count(shop)
  shop[:pets].count
end

# 7 - type one, number of pets by breed
def pets_by_breed(shop, breed)
  shop[:pets].map.select {|pet| (pet[:breed] == breed)}
end

# 8 - type one, find by pet name refactored
def find_pet_by_name(shop, name)
  shop[:pets].find {|pet| pet[:name] == name}
end

# 9 - remove pet by names
def remove_pet_by_name(shop, name)
  shop[:pets].delete_if {|pet| pet[:name] == name }
end

# 10 - add pet to stock
def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

# 11 - finding customer cash
def customer_cash(customer)
  customer[:cash]
end

# 12 - removing customer cash
def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

# 13 - finding customer pet count
def customer_pet_count(customer)
  customer[:pets].count
end

# 14 - add pet to customer
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# optional

# 15 - customer can afford pet
def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= 100
end

# 16 - sell pet to customer
def sell_pet_to_customer(shop, pet, customer)
  if pet.nil? || customer[:cash] < pet[:price]
  else
    # increase the number of pets the customer has
    add_pet_to_customer(customer, pet)
    # increase the number of pets the shop has sold
    increase_pets_sold(shop)
    # remove the price of the pet from the customer's cash
    cash = pet[:price]
    remove_customer_cash(customer, cash)
    #add or remove the cash from the shop till
    add_or_remove_cash(shop, cash)
  end
end

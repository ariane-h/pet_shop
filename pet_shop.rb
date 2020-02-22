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
def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
end

# 6 - stock count
def stock_count(shop)
  shop[:pets].count
end

# 7 - number of pets by breed
def pets_by_breed(shop, breed)
  all_pet_breeds = []
  shop[:pets].map { |pet| all_pet_breeds.push(pet[:breed]) }
  all_pet_breeds.select {|type| type == breed }
end

# 8 - find by pet name

def find_pet_by_name(shop, name)
  all_pets = shop[:pets]
  all_pets.find {|pet| pet[:name] == name }
end

# 9 - remove pet by names

#type one
def remove_pet_by_name(shop, name)
  shop[:pets].delete_if {|pet| pet[:name] == name }
end

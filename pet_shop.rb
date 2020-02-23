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

# 7 - number of pets by breed
def pets_by_breed(shop, breed)
  all_pet_breeds = []
  shop[:pets].map { |pet| all_pet_breeds.push(pet[:breed]) }
  all_pet_breeds.select {|type| type == breed }
end

# 8 - find by pet name
def find_pet_by_name(shop, name)
  all_pets = shop[:pets]
  pet_name_match = all_pets.find {|pet| pet[:name] == name }
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
  #customer money
  customer[:cash] >= 100

  #to find all pet prices
  # @pet_shop[:pets].map {|pet| pet[:price]}
end


# 16 - sell pet to customer
def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return nil
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

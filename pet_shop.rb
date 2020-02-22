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
  matching_breeds = all_pet_breeds.select {|type| type == breed }
end

=begin
find how many pets there are by breed

list each the breed of each pet
check if the breed matches the breed we're looking for
count how many times we find it

start

end

=end


#
# breed_array = []
# breed_number = breed_array.select { |pet| pet[:breed] == breed }.any?


# pet_breeds = pets.map { |pet| pet[:breed] }
# pet_breeds.include 'breed' ?

# how_many = shop[:pets][:breed].select {|type| type === breed }
# return how_many.count

  # if (shop[:pets][:breed]) == breed
  # end

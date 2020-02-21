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
=begin

=end

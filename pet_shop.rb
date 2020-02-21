require('pry-byebug')

#find shop name
def pet_shop_name(shop)
  return shop[:name]
end

#add up total cash
def total_cash(till)
  return till[:admin][:total_cash]
end

#add or remove cash

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

# find number of pets sold

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

=begin

=end

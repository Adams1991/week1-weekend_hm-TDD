def pet_shop_name(pet_shop_details)
 return pet_shop_details[:name]
end

def total_cash(pet_shop_details)
  return pet_shop_details[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_details, cash_change)
  pet_shop_details[:admin][:total_cash] += cash_change
end

def pets_sold(pet_shop_details)
  return pet_shop_details[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_details, pets_sold)
  pet_shop_details[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop_details)
  pet_shop_details[:pets].length
end

# def pets_by_breed(pet_shop_details, breed_to_check)
#   breed_array = []
#   for breed in pet_shop_details
#   breed_to_check == pet_shop_details
#   end
# end
#
#
# def find_pet_by_name(pet_shop_details, pet_name)
#   if pet_shop_details[:pets][:name] == pet_name
#     return pet_name
#   else
#     return nil
# end

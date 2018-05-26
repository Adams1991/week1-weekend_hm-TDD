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

def pets_by_breed(pet_shop_details, pet_details)
  pets_found = []
  for pet in pet_shop_details[:pets]
    if pet_details == pet[:breed]
      pets_found << pet
    end
  end
  return pets_found
end

def find_pet_by_name(pet_shop_details, pet_details)
  for pet in pet_shop_details[:pets]
    if pet_details == pet[:name]
    return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop_details, pet_details)
  for pet in pet_shop_details[:pets]
    if pet_details == pet[:name]
      pet_shop_details[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop_details, new_pet)
  pet_shop_details[:pets].push(new_pet)
end

def customer_cash(customer_details)
  return customer_details[:cash]
end

def remove_customer_cash(customer_details, cash)
  customer_details[:cash] -= cash
end

def customer_pet_count(customer_details)
    customer_details[:pets].count
end

def add_pet_to_customer(customer_details, pet_details)
  customer_details[:pets].push(pet_details)
end

def customer_can_afford_pet(customer_details, pet_details)
  if customer_details[:cash] >= pet_details[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop_details, pet_details, customer_details)
    case
    when pet_details == pet_shop_details[:pets][0] && customer_details == pet_shop_details[:pets][:price]
      add_pet_to_customer(customer_details, pet_details)
      increase_pets_sold(pet_shop_details, pets_sold)
      remove_customer_cash(customer_details, cash)
      add_or_remove_cash(pet_shop_details, cash_change)
  end
end

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  found_item = nil
  #name = grocery_shelf[array][hashes_value][0]
  #collection = grocery_shelf
  collection.each do |array|
    if array[:item] == name 
      found_item = array
    else
      found_item
    end 
  end 
  return found_item
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  reciept = []
  cart.each do |item|
    current_item = find_item_by_name_in_collection(item[:item], reciept)
    if current_item
      reciept.each do |reciept_item|
        if reciept_item[:item] == current_item[:item]
          reciept_item[:count] += 1 
        end
      end
    else
      item[:count] = 1 
      reciept << item
    end
  end
  reciept
 end


  
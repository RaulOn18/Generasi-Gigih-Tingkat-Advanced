def get_all_items 
  client = create_db_client
  items = client.query("select * from items")
end

def get_all_categories
  client = create_db_client
  categories = client.query("select * from categories")
end

def get_all_items_with_categories
  client = create_db_client
  items_with_categories = client.query("select items.*, categories.name AS 'Category' From item")
  
end

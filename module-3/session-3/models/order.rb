require './db/mysql_connector.rb'
require './models/item.rb'

class Order
  attr_accessor :reference_no, :customer_name, :date, :items

  def initialize(param)
    @reference_no = param[:reference_no]
    @customer_name = param[:customer_name]
    @date = param[:date]
    @items = []
  end

  def save
    return false unless valid?

    client = create_db_client
    client.query("insert into orders(reference_no, customer_name, date) values ('#{reference_no}', '#{customer_name}', '#{date}'")
  end

  def update
    return false unless valid?
    client = create_db_client
    client.query("update orders set customer_name = '#{customer_name}', date = '#{date}', where reference_no = '#{reference_no}'")
  end

  def self.remove_by_reference_no(a_reference_no)
    client = create_db_client
    client.query("delet from orders where reference_no = '#{a_reference_no}'")
  end

  def add_item(params)
    item = Item.new({
      id: params['id'],
      name: params['name'],
      price: params['price'],
      order: self
    })
    item.save
    item
  end
  
  def self.find_with_items(a_reference_no)
    order = find_by_reference_no(a_reference_no)
    order.items = Item.find_by_reference_no(a_reference_no)
    order
  end

  def self.convert_sql_result_to_array(result)
    orders = []
    result.each do |row|
      order = Order.new({
        reference_no: row['reference_no'],
        customer_name: row['customer_name'],
        date: row['date']
      })
      orders << order
    end
  end
end

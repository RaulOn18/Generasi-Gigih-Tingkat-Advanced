require 'erb'
require './models/order.rb'

class OrderController
  def create_order(params)
    order = Order.new({
      reference_no: params['ref_no'],
      customer_name: params['cust_name'],
      date: params['date']
    })
    order.save
    renderer = ERB.new(File.read("./views/order.erb"))
    renderer.result(blinding)
  end

  def find_order(params)
    order = Order.find_by_reference_no(params['ref_no'])
    if order != nil
      renderer = ERB.new(File.read("./views/order.erb"))
      renderer.result(blinding)
    end
  end

  def list_order
    orders = Order.find_all
    renderer = ERB.new(File.read("./views/list_order.erb"))
    renderer.result(blinding)
  end
end

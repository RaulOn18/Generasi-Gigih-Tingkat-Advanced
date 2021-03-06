# require 'rubygems'
require 'sinatra'
require_relative './controller/order_controller'

post '/order' do
  controller = OrderController.new
  controller.create_order(params)
end

get '/order' do
  controller = OrderController.new
  controller.find_order(params)
end

post '/order/edit/:ref_no' do
  controller = OrderController.new
  controller.edit_order(params)
end

get '/order/delete/:ref_no' do
  controller = OrderController.new
  controller.delete_order(params)
end


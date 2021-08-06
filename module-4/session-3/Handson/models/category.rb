class Category
  attr_accessor :name, :id
  def initialize(params)
    @name = params[:category_name]
    @id = params[:category_id]
  end

  def save
    return false unless valid?
    client = create db client
    client.query("inser into orders(reference_no, customer_name, date) values('#{reference_no}','#{customer_name} '#{date}'")
  end

  def valid?
    return false if @reference_no.nil?
    return false if @customer_name.nil?
    return false if @date.nil?
    true
  end

  def update
    client = create_db_client
    client.query("
      update categories
      set name='#{@name}'
      set id='#{@id}'
      ")
  end

  def delete
    
  end
end
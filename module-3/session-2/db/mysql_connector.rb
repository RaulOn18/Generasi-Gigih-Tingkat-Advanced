CREATE TABLE `orders`(
  `reference_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reference_no`)
)

require 'mysql2'
def create_db_client
  db = Mysql2::Client.new(
    :hostname => ENV[DB_HOST],
    :username => ENV[DB_USERNAME],
    :password => ENV[DB_PASSWORD],
    :database => ENV[DB_NAME]
  )
  db
end

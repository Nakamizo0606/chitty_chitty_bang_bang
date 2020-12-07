class Order < ApplicationRecord
  
  belongs_to  :recruitment 
  has_one     :address
  belongs_to  :user

end

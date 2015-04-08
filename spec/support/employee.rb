class Employee < ActiveRecord::Base
  include PolymorphicIntegerType::Extensions
  has_many :addresses, :as => :addressable, before_add: :set_address_order

  private
  def set_address_order(address)
    address.order = addresses.size
  end
end

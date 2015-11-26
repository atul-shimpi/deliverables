require 'test_helper'
# params = { member: { name: 'Jack', avatar_attributes: { icon: 'smiling' } } }

class PropertyTest < ActiveSupport::TestCase
  test "CreateNewProperty" do
    address_params = { :property => { :user_id => 1, :property_type_id => 1, :purchase_type_id => 1, :area => 1200, :price => 1000000,
                      address_attributes: { :address1 => "Marine Drive", :address2 => "Colaba", :country => "India",
                                                :city => "Mumbai", :pincode => "411004" } } }

   property = Property.new(address_params[:property])
   property.build_address(address_params[:property][:address_attributes])
  # property.address_attributes = address_params[:property][:address_attributes]
   property.save
   puts property.address.address1
   assert (property.id > 0)
  end  
end

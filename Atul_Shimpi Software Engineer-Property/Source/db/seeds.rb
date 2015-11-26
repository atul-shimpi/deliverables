# Roles
Role.create(:role_type => :admin, :name => 'Admin', :description => 'System Administrator')
Role.create(:role_type => :agent, :name => 'Agent',  :description =>'I want to sell property')
Role.create(:role_type => :buyer, :name => 'Buyer', :description => 'I want to buy property')
Role.create(:role_type => :buyer_and_seller, :name => 'Buyer', :description => 'I want to buy and sell property')

# Users
User.create(:name => 'Atul Shimpi', :email_id => 'shimpiatul@hotmail.com', :role_id => 1, :password => 'Atul@2015')
User.create(:name => 'Alex Miller', :email_id => 'alex@hotmail.com', :role_id => 2, :password => 'Alex@2015')
User.create(:name => 'Jeniffer Roberts', :email_id => 'jeniffer@hotmail.com', :role_id => 3, :password => 'Jeniffer@2015')
User.create(:name => 'Himanshu Ghag', :email_id => 'himanshu@hotmail.com', :role_id => 4, :password => 'Himanshu@2015')

# Property Types
PropertyType.create(:name => 'Residential - 1 BHK')
PropertyType.create(:name => 'Residential - 2 BHK')
PropertyType.create(:name => 'Residential - 3 BHK')
PropertyType.create(:name => 'Residential - 1 BHK Garden flat')
PropertyType.create(:name => 'Commercial - Office')

# Cities
City.create(:name => 'Pune')
City.create(:name => 'Mumbai')
City.create(:name => 'Nasik')
City.create(:name => 'Delhi')
City.create(:name => 'Benguluru')
City.create(:name => 'Ahmedabad')

# Property Purchase Types
PurchaseType.create(:name => 'Sell Off')
PurchaseType.create(:name => 'Rent')
PurchaseType.create(:name => 'Paying Guest')


# Dummy Addresses for demo purpose
Address.create(:property_id => 1, :address1 => "Flat No 21, Sadabhav Society", :address2 => 'Behind Gandhi Bhavan', :city => 'Pune', :pincode => '411038', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 2, :address1 => "Flat No 13', Ameya Arcade", :address2 => 'Near Vrindavan', :city => 'Pune', :pincode => '411038', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 3, :address1 => "Deepa Bunglow, Katraj", :address2 => 'Behind Kothrud Stand', :city => 'Pune', :pincode => '411038', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 4, :address1 => "Flat no 10, Piyusha Apts", :address2 => 'Karve Road', :city => 'Pune', :pincode => '411004', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 5, :address1 => "7 Bunglows, Lokhandwala Complex", :address2 => 'Andheri (W)', :city => 'Mumbai', :pincode => '411093', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 6, :address1 => "Chandani Chowk, Balaji Complex", :address2 => 'Yamuna Highway', :city => 'Delhi', :pincode => '511098', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 7, :address1 => "New Airport Road", :address2 => 'Main Market, Manish Complex', :city => 'Delhi', :pincode => '411093', :country => 'India', :latitude => 0, :longitude => 0)
Address.create(:property_id => 8, :address1 => "New Airport Road", :address2 => 'Main Market, Manish Complex', :city => 'Delhi', :pincode => '411093', :country => 'India', :latitude => 0, :longitude => 0)

# Dummy Properties for demo purpose
Property.create(:user_id => 1, :property_type_id => 1, :purchase_type_id => 1, :area => 1200, :price => 1000000)
Property.create(:user_id => 1, :property_type_id => 2, :purchase_type_id => 2, :area => 360, :price => 350000)
Property.create(:user_id => 2, :property_type_id => 1, :purchase_type_id => 1, :area => 900, :price => 120000)
Property.create(:user_id => 1, :property_type_id => 2, :purchase_type_id => 2, :area => 1650, :price => 350000)
Property.create(:user_id => 2, :property_type_id => 1, :purchase_type_id => 1, :area => 650, :price => 3510000)
Property.create(:user_id => 1, :property_type_id => 2, :purchase_type_id => 1, :area => 650, :price => 350000)
Property.create(:user_id => 2, :property_type_id => 5, :purchase_type_id => 1, :area => 2000, :price => 35000)
Property.create(:user_id => 2, :property_type_id => 5, :purchase_type_id => 1, :area => 2000, :price => 35000)


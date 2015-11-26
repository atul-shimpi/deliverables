class Address < ActiveRecord::Base
  belongs_to :property

  def full_address
    [self.address1,
     self.address2,
     self.city + ' - ' + self.pincode.to_s,
     self.country
    ].reject(&:empty?).join("\n")
  end
end

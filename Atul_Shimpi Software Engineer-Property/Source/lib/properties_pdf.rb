require 'pdf_base'

class PropertiesPdf < PDFBase
  def initialize(properties, app_name)
    super()

    @properties = properties

    header(app_name)
    title('Properties')
    body(rows)
  end

  def rows
    [['Property', 'Purchase Type', 'Agent']] +
      @properties.map do |property|
        [property.property_type.name + "\n" + property.addresses.full_address,
         property.purchase_type.name, property.user.name]
      end
  end

end
require 'properties_pdf'

class PropertiesPdfController < ApplicationController
  def index
    properties = Property.all

    pdf = PropertiesPdf.new(properties, app_name)
    send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', disposition: 'inline'
  end
end


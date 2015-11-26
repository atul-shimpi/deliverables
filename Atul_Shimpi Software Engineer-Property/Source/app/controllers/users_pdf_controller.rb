require 'users_pdf'

class UsersPdfController < ApplicationController
  def index
    users = User.all

    pdf = UsersPdf.new(users, app_name)
    send_data pdf.render, filename: 'report.pdf', type: 'application/pdf', disposition: 'inline'
  end
end

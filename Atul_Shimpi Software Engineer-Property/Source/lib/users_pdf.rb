require 'pdf_base'

class UsersPdf < PDFBase
  def initialize(users, app_name)
    super()

    @users = users

    header(app_name)
    title('Users')
    body(rows)
  end

  def rows
    [['Name', 'Type', 'Email Id']] +
        @users.map do |user|
          [user.name, user.role.name, user.email_id]
        end
  end
end

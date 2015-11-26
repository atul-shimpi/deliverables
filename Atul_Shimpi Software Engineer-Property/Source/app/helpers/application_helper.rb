module ApplicationHelper
  def app_menus(role_id)
    case role_id
      when 1 # admin
        {:Properties => properties_path, :Search => new_search_path , :Users => users_path}
      when 2 # agent
        {:Properties => new_search_path}
      when 3 # buyer
        {:Search => new_search_path}
      when 4 # both
        {:Properties => properties_path, :Search => new_search_path}
      else
    end
  end

  def setup_property(property)
    property.address ||= Address.new
    property
  end
end
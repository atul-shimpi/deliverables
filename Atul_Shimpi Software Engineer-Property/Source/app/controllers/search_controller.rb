class SearchController < ApplicationController
  def index
    @properties = Property.all
  end

  def mail
    @property = Property.find(1)
    @user = User.find(session[:user_id])

    PropertyInterestMail.interest_mail(@user, @property).deliver if @property
  end

  def new
    # User clicked 'Export to pdf' button
    if params[:export_to_pdf]
      redirect_to properties_pdf_index_path
      return
    # User clicked 'Remove Filter' button
    elsif params[:remove_filter]
      @properties = Property.all
    # User clicked 'Apply Filter' button
    else
      @properties = Property.filter(params.slice(:property_type_id, :purchase_type_id, :user_id))
    end

    @headers= [{:Type => 10}, {:PurchaseType => 10}, {:Address => 10}, {:Agent => 10},
               {:Area => 10}, {:Price => 10}, {:'Express Interest' => 10}]
    @view_type = 2 #User is in CRUD mode
    render 'properties/search/index'
  end

end

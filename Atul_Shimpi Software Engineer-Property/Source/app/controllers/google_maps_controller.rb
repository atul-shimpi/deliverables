class GoogleMapsController < ApplicationController
  respond_to :html

  # 404
  rescue_from ActiveRecord::RecordNotFound do |exception|
    rescue_record_not_found(exception)
  end

  # GET /playgrounds
  # GET /playgrounds.json
  def index
    @properties = Property.all
    @json = @properties.to_gmaps4rails do |property, marker|
      @property = property
      marker.infowindow render_to_string(:action => 'show', :layout => false)
      marker.json({ :id => @property.id })
    end
  end

  # GET /playgrounds/1
  # GET /playgrounds/1.json
  def show
    respond_with(@property, :layout =>  !request.xhr?)
  end

  # GET /playgrounds/new
  def new
    @property = Property.new(params[:property].present? ? property_params : nil)
    respond_with(@playground, :layout => !request.xhr?)
  end

  # GET /playgrounds/1/edit
  def edit
    respond_to do |format|
      format.js {}
      format.html {}
    end
  end

  # POST /playgrounds
  # POST /playgrounds.json
  def create
    @property = Property.new(property_params)
    respond_to do |format|
      if @property.save
        format.html { redirect_to @playground, notice: 'Property was successfully created.' }
        format.js {}
      else
        format.html { render action: 'new' }
        format.js {}
      end
    end
  end

  # PATCH/PUT /playgrounds/1
  # PATCH/PUT /playgrounds/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.js {}
      else
        format.html { render action: 'edit' }
        format.js {}
      end
    end
  end

  # DELETE /playgrounds/1
  # DELETE /playgrounds/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to google_maps_url }
      format.js {}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def property_params
    #params.require(:property).permit(:name, :sport, :latitude, :longitude, :street_number, :route, :city, :country, :postal_code)
  end

  # Generic not found action
  def rescue_record_not_found(exception)
    respond_to do |format|
      format.html
      format.js { render :template => "properties/404.js.erb", :locals => {:exception => exception} }
    end
  end
end

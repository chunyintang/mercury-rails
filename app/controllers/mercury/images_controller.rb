class Mercury::ImagesController < MercuryController

  respond_to :json

  # POST /images.json
  def create
    @image = MercuryImage.new(params[:image])
    @image.save
    respond_with @image
  end

  # DELETE /images/1.json
  def destroy
    @image = MercuryImage.find(params[:id])
    @image.destroy
    respond_with @image
  end

end

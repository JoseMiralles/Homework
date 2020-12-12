class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def create
    if signed_in?
      @band = Band.new(band_params)
      if @band.save
        redirect_to band_url(@band.id)
      else
        flash[:errors] = @band.errors.full_messages
        redirect_to new_band_url
      end
    end
  end

  def new
    if signed_in?
      @band = Band.new
      render :new
    else
      flash.now[:errors] = ["You need to be logged in to do that."]
      redirect_to new_sessions_url
    end
  end

  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end

  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def update
    @band = Band.find_by(id: params[:id])
    if @band.update(band_params)
      p "UPDATED!!!!!"
      redirect_to band_url(@band.id)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :edit
    end
  end

  def destroy
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end

end

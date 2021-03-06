class ServicesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  before_action :only => [:new, :create, :edit, :update, :destroy] do
   redirect_to new_user_session_path unless current_user && current_user.admin
 end

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
    flash[:notice] = "Service successfully added!"
      redirect_to  services_path
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service= Service.find(params[:id])
    if @service.update(service_params)
      flash[:notice] = "Service successfully updated!"
      redirect_to services_path
    else
      render :edit
    end
  end

  def destroy
    @service = Service.find(params[:id])
    if @service.destroy
      flash[:notice] = "Service successfully removed!"
      redirect_to services_path
    end
  end

private
  def service_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:service).permit(:name, :description, :price, :image)
  end
end

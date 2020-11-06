class ServicesController < ApplicationController

  def index
    @services = Service.all
    @tasks = Task.all
  end
  
  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
  end

  private
  
  def service_params
    params.require(:service).permit(:name, :description, :photo)
  end
  
end

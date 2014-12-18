class ServicesController < ApplicationController
  before_action :find_service, only: [:edit, :update]

  def index
    @services = Service.all.paginate(page: params[:page])
  end

  def edit
  end

  def update
    @service.update(service_params)
    redirect_to services_path,
      notice: "Your #{@service.year} #{@service.make} #{@service.model} drop off has been updated. Please call Robert or Kayla at 928-367-2630 to confirm drop off date."
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
    redirect_to services_path,
      notice: "Your #{@service.year} #{@service.make} #{@service.model} has been scheduled for drop off. Please call Robert or Kayla at 928-367-2630 to confirm drop off date."
  end

  private

  def service_params
    params.require(:service).permit(:year, :make, :model, :service_type, :date).merge(price: 70)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end

class ServicesController < ApplicationController
  def index
  end

  def new
    @service = Service.new
  end

  def create
    redirect_to services_path,
      notice: 'Service has been created'
  end
end

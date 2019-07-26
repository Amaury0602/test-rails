class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create, :completed, :done, :destroy]
  def index
    @services = Service.all
  end

  def done
    @services = Service.where(completed: false)
  end

  def show
    @service = Service.find(params[:id])
    @review = Review.new
    @review.service = @service
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def completed
    @services = Service.all
    @service = Service.find(params[:service_id])
    @service.update(completed: true)
    if @service.save
      respond_to do |format|
        format.html { redirect_to service_path(@service) }
        format.js
      end
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :price)
  end
end

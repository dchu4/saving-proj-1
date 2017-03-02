class ComponentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @component = Component.new
  end

  def create
    @component = Component.new(component_params)

    if @component.save
      render :new
    end
  end

  def edit
    @component = Component.find(params[:id])
  end

  def update
    @component = Component.find(params[:id])

    if @component.update(component_params)
      redirect_to request.referrer
    end
  end

  def delete
    @component = Component.find(params[:id])
    @component.destroy
  end

  private 

  def component_params
    params.require(:component).permit(:name, :title, :body)
  end
end

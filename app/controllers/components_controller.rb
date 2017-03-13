class ComponentsController < ApplicationController
  before_action :authenticate_admin!, only: [:update]

  def update
    @component = Component.find(params[:id])

    if @component.update(component_params)
      redirect_to request.referrer
    end
  end

  private 

  def component_params
    params.require(:component).permit(:name, :title, :body)
  end
end

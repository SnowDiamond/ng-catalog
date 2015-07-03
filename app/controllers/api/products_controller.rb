class Api::ProductsController < Api::BaseController

  respond_to :json

  def index
    render json: { :Count => Product.count, :Items => Product.page(params[:page]).per(4) }
  end

  def show
    respond_with Product.find(params[:id])
  end
end


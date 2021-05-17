class Api::V1::ProductsController < Api::V1::BaseController
  def index
    @products = Product.all

    render json: @products, only: %w[title photo description price]
  end
end

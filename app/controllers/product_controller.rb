class ProductController < ApplicationController
    def new
        @product = Product.new
    end

    def index
        @products = Product.all
    end

    def create
        @product = Product.new(product_params)

        if @product.save
            render json: { data: { result: true }, message: 'Image sucessfully uploaded.' }, status: :created
        else
            render json: { data: { result: false }, errors: @product.errors }, status: :unprocessable_entity
        end
        
        @product.update_attributes(product_params)
    end

    private

    def product_params
        params.require(:product).permit(:title, :image)
    end
end

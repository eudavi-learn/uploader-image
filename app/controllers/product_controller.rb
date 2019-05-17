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
            render json: { result: true, msg: ' The image is sucessfully uploaded!!'}, status: :created
        else
            render json: { result: false, user: @product.errors }, status: :unprocessable_entity
        end
        
        @product.update_attributes(product_params)
    end

    private

    def product_params
        params.require(:product).permit(:title,:image)
    end
end

class PhotoUploadsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
  end
  def create
    @product = Product.find(params[:product_id])
    @product.photos.attach(params[:product][:photos])
    redirect_to product_path(@product)
  end
  def destroy
    @product = Product.find(params[:product_id])
    @product.photos.find(params[:id]).purge
    redirect_to product_path(@product)
  end
end

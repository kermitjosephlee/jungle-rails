class RatingsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @rating = @product.ratings.create(rating_params)
    @rating.user = current_user

    if @rating.save
      redirect_to @product
    else
      render :back
    end
  end

private

  def rating_params
    params.require(:rating).permit(:description, :rating)
  end
end

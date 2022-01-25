class V1::GifController < ApplicationController
  def search
    gif = Gif.all
    render json: gif
  end

  private

  def serach_params
    params.permit(:query, :before, :after)
  end
end

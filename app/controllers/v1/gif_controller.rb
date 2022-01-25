class V1::GifController < ApplicationController
  def search
    render json: FactoryBot.build_list(:gif, 1)
  end

  private

  def serach_params
    params.permit(:query, :before, :after)
  end
end

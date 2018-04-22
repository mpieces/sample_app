class ResponsesController < ApplicationController

  def create_or_update
    binding.pry
    answer = Response.find_or_initialize_by(
      item_id: response_params[:item_id],
      user_id: current_user.id)
    answer.update!(response_type: response_params[:response_type])
    render json: {}, status: 200
  end

  private

  def response_params
    params.require(:response).permit(:item_id, :response_type)
  end

end
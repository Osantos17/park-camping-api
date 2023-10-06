class ParksListsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :authenticate_user

  def index
    @parks_lists = ParksList.all
    render "parks_lists/index"
  end

  def create
    @parks_list = ParksList.new(park_id: params[:id], user_id: current_user.id)

    if @parks_list.save
      render json: @parks_list, status: :created
    else
      render json: { errors: @parks_list.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @parks_list = ParksList.find_by(id: params[:id])
    @parks_list.destroy
    render json: { message: "park removed" }
  end
end

class Api::V2::PlayersController < ApplicationController
  def index
    @players = Player.all  
  end

  def create
    @player = Player.create(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                position: params[:position],
                                birthdate: params[:birthdate],
                                pro_team: params[:pro_team],
                                salary: params[:salary],
                                location: params[:location],
                                quote: params[:quote]
                                )
    render :show
  end

  def update
    @player = Player.find(params[:id])
    @player.update(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    position: params[:position],
                    birthdate: params[:birthdate],
                    pro_team: params[:pro_team],
                    salary: params[:salary],
                    location: params[:location],
                    quote: params[:quote]
                  )
    render :show
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    render json: {message: "Successfully Deleted Player"}
  end
end

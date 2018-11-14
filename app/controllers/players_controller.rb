class PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players.to_json
  end

  def create
    @players = Player.all
    @player = Player.create(player_params)
    if @player.valid?
      render json: @players.to_json
    else
      render json: {"errors" => @player.errors.full_messages}
    end
  end

  private

  def player_params
    params.require(:players).permit(:username, :score)
  end

end

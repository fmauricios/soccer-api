class PlayersController < ApplicationController

  # Callbacks

  # Methods

  def index
    players = Player.all
    render json: players
  end

end

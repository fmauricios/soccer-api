class PlayersController < ApplicationController

  # Callbacks

  before_action :find_player, only: [:show, :update, :destroy]

  # Methods

  def index
    @players = Player.all
    render json: @players
  end

  def show
    render json: @player
  end

  def create
    @player = Player.new

    if @player.save
      render json: @player, status: :created, localtion: @user
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # Private methods

  private

    def find_player
      @player = Player.find(params[:id])
    end

end

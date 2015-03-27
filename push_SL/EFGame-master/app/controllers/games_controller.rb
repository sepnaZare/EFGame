class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!,  :only => [:new, :create, :edit, :update, :destroy]
  respond_to :html

  def index
    @games = Game.all
    respond_with(@games)
  end

  def show
    respond_with(@game)
  end

  def new
    @game = Game.new
    respond_with(@game)
  end

  def edit
  end

  def create
    @game = Game.new(game_params)
    @game.creater_id = current_user.id
    if @game.save
      game_roster = GameRoster.new(:player_id => current_user.id, :game_id => @game.id)
      game_roster.save
    end
    #@game.players << current_user
    flash[:notice] = 'Game was successfully created.' if @game.save
      respond_with(@game)
  end



  def update
    @game = Game.find(params[:id])
    flash[:notice] = 'Game was successfully updated.' if @game.update(game_params)
    respond_with(@game)
  end

  def destroy
    @game.destroy
    respond_with(@game)
  end

  private
    def set_game
      @game = Game.find(params[:id])
    end

    def game_params
      params.require(:game).permit(:creater_id, :number_of_rounds, :number_of_players, :players)
    end
end

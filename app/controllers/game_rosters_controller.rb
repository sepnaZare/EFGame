class GameRostersController < ApplicationController
  before_action :set_game_roster, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @game_rosters = GameRoster.all
    respond_with(@game_rosters)
  end

  def show
    respond_with(@game_roster)
  end

  def new
    @game_roster = GameRoster.new
    respond_with(@game_roster)
  end

  def edit
  end

  def create

    @game = Game.find(params[:game_id])
    @game_roster = @game.game_rosters.new()
    @game_roster.player = current_user
    current_user.game_rosters << @game_roster
    flash[:notice] = 'GameRoster was successfully created.' if @game_roster.save
    redirect_to @game
  end

  def update
    flash[:notice] = 'GameRoster was successfully updated.' if @game_roster.update(game_roster_params)
    respond_with(@game_roster)
  end

  def destroy
    @game_roster.destroy
    respond_with(@game_roster)
  end

  private
    def set_game_roster
      @game_roster = GameRoster.find(params[:id])
    end

    def game_roster_params
      params.require(:game_roster).permit(:game_id, :player_id)
    end
end

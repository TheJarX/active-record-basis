class GamesController < ApplicationController

  def index
    render json: Game.all
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: @game.errors
    end
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(game_params)
      render json: @game
    else
      render_error(@game.errors, :unprocessable_entity)
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    head :no_content
  end

  private
  def game_params
    params.require(:game).permit(:name, :genre, :price, :release_date, :company_id)
  end
end

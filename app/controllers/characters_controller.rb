class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(char_params)
    if @character.save

    else
      render 'new'
    end
  end

  private

  def char_params
    params.require(:character).permit(:name, :level, :one_uniq_thing, ability_scores)
  end

  def ability_scores
    CharactersController.helpers.ability_scores
  end
end
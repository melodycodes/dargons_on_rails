class CharactersController < ApplicationController
  def new
    @character = Character.new
  end

  def index
    @characters = Character.paginate(page: params[:page])
  end

  def show
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(char_params)
    if @character.save
      render 'create_two'
    else
      render 'new'
    end
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(char_params)
      flash[:success] = "Character updated"
    end
  end

  def create_two
    @character = Character.find(params[:id])
    if @character.update_attributes(char_params)
      flash[:success] = "Character updated"
      render 'create_three'
    else
      render 'new'
    end
  end

  def create_three
    @character = Character.find(params[:id])
    if @character.update_attributes(char_params)
      flash[:success] = "Character updated"
      redirect_to @character
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

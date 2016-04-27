class CharactersController < ApplicationController
  before_filter :load_character, only: [:show, :update]

  def new
    @character = Character.new
  end

  def index
    @characters = Character.paginate(page: params[:page])
  end

  def show
  end

  def create
    @character = Character.new(char_params)
    if @character.save
      redirect_to character_step_path(@character, :add_one_uniq_thing)
    else
      render 'new'
    end
  end

  def update
    if @character.update_attributes(char_params)
      flash[:success] = "Character updated"
    end
  end

  private

  def load_character
    @character = Character.find(params[:id])
  end

  def char_params
    params.require(:character).permit(:name, :level, :one_uniq_thing, ability_scores)
  end

  def ability_scores
    CharactersController.helpers.ability_scores
  end

end

class Characters::StepsController < ApplicationController
  include Wicked::Wizard

  steps :add_one_uniq_thing, :choose_class, :add_ability_scores

  def show
    @character = Character.find(params[:character_id])
    @character_classes ||= CharactersController.helpers.all_character_classes
    render_wizard
  end

  def update
    @character = Character.find(params[:character_id])
    @character.update_attributes(char_params)
    render_wizard @character
  end

  def finish_wizard_path
    character_path(Character.find(params[:character_id]))
  end

  private

  def char_params
    params.require(:character).permit(:name, :level, :one_uniq_thing, ability_scores, :character_class)
  end

  def ability_scores
    CharactersController.helpers.ability_scores
  end
end

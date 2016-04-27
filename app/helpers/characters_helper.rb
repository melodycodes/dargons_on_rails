module CharactersHelper
  def ability_scores
    [ :strength, :constitution, :dexterity, :intelligence, :wisdom, :charisma ]
  end

  def attribute_or_default(attr, default = "N/A")
    @character.send(attr.to_sym)
  end

  def one_uniq
    uniq = @character.one_uniq_thing
    uniq.nil? ? "N/A" : "\"#{uniq}\""
  end

  def all_character_classes
    YAML.load_stream(File.open("#{Rails.root}/lib/character_class.yaml")).map(&:type)
  end
end

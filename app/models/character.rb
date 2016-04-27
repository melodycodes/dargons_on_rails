class Character < ActiveRecord::Base
  validates :name, presence: true

  def hit_points
    (character_class_obj.base_hp.to_i + constitution) * 3 if character_class_obj
  end

  def armor_class
    character_class_obj.base_ac.to_i + find_mid([constitution, dexterity, wisdom]) + level if character_class_obj
  end

  def physical_def
    character_class_obj.base_pd.to_i + find_mid([strength, constitution, dexterity]) + level if character_class_obj
  end

  def mental_def
    character_class_obj.base_md.to_i + find_mid([intelligence, wisdom, charisma]) + level if character_class_obj
  end

  def initiative_bonus
    dexterity + level
  end

  private

  def find_mid(args)
    args.sort[1]
  end

  def character_class_obj
    return nil if character_class.blank?
    all_classes = YAML.load_stream(File.open("#{Rails.root}/lib/character_class.yaml"))
    all_classes.select {|c| c.type == character_class }.first
  end
end

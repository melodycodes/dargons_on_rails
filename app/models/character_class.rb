class CharacterClass
  attr_accessor :type, :base_hp, :base_ac, :base_pd, :base_md,
    :background_pt, :recovery_dice

  def initialize(type, base_hp, base_ac, base_pd, base_md,
    background_pt, recovery_dice)
    @type = type
    @base_hp = base_hp
    @base_ac = base_ac
    @base_pd = base_pd
    @base_md = base_md
    @background_pt = background_pt
    @recovery_dice = recovery_dice
  end
end

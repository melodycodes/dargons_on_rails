require 'rails_helper'

RSpec.describe Character, type: :model do
  before(:all) do
    @character = FactoryGirl.build(:character)
  end

  it "should be valid" do
    expect(@character.valid?).to be true
  end

  it "name should be present" do
    @character.name = "    "
    expect(@character.valid?).to be false
  end
end

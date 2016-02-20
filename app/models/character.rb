class Character < ActiveRecord::Base
  validates :name, :one_uniq_thing, presence: true
end

class HeroWithPowersSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name, :powers
  has_many :powers, through: :hero_powers
end


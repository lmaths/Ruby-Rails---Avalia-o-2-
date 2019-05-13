class Personagem < ApplicationRecord
  validates_presence_of :nome, :forca, :resistencia, :agilidade, :destreza
  has_many :poderes
end

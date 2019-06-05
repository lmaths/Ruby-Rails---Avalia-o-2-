class Poder < ApplicationRecord
  validates_presence_of :nome, :tipo, :personagem


  belongs_to :personagem
end

class CreatePoderes < ActiveRecord::Migration[5.1]
  def change
    create_table :poderes do |t|
      t.belongs_to :personagem, index: true
      t.string :nome
      t.string :tipo
    end
  end
end

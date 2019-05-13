class CreatePersonagens < ActiveRecord::Migration[5.1]
  def change
    create_table :personagens do |t|
      t.string :nome
      t.integer :forca
      t.integer :resistencia
      t.integer :agilidade
      t.integer :destreza
    end
  end
end

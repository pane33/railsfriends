class CreateTAmicis < ActiveRecord::Migration[7.0]
  def change
    create_table :t_amicis do |t|
      t.string :nome
      t.string :cognome
      t.string :email
      t.string :telefono
      t.string :instagram

      t.timestamps
    end
  end
end

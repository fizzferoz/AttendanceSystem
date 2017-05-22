class CreatePenyataKehadirans < ActiveRecord::Migration[5.0]
  def change
    create_table :penyata_kehadirans do |t|
      t.datetime :tarikh
      t.datetime :masamula
      t.datetime :masatamat

      t.timestamps
    end
  end
end

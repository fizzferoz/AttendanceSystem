class CreatePengunamakmals < ActiveRecord::Migration[5.0]
  def change
    create_table :pengunamakmals do |t|
      t.string :nama
      t.integer :nombormatrix
      t.datetime :masamasukprogram
      t.datetime :masakeluarprogram

      t.timestamps
    end
  end
end

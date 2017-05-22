class CreateStatuskehadiranpengunamakmals < ActiveRecord::Migration[5.0]
  def change
    create_table :statuskehadiranpengunamakmals do |t|
      t.string :statuskehadiran
      t.string :statusmasuk

      t.timestamps
    end
  end
end

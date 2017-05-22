class CreatePendaftaranKelas < ActiveRecord::Migration[5.0]
  def change
    create_table :pendaftaran_kelas do |t|
      t.string :program
      t.string :penganjur
      t.string :tujuan
      t.datetime :tempohmasamula
      t.datetime :tempohmasatamat

      t.timestamps
    end
  end
end

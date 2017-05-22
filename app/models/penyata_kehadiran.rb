class PenyataKehadiran < ApplicationRecord
	has_many :statuskehadiranpengunamakmals,dependent: :destroy
	belongs_to :pendaftaran_kelas
end

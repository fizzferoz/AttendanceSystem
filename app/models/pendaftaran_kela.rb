class PendaftaranKela < ApplicationRecord
	has_many :penyata_kehadirans,dependent: :destroy
end

class Pengunamakmal < ApplicationRecord
	has_many :statuskehadiranpengunamakmals,dependent: :destroy
end

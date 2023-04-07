class Serie < ApplicationRecord
  has_many :photos, dependent: :destroy
end

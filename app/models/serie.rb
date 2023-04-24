class Serie < ApplicationRecord
  has_many_attached :photos
  validates :name, presence: { message: "nombre requerido" }
end

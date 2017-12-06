class Customer < ApplicationRecord
  validates :name,
            presence: true,
            length: { minimum: 3 }

  has_many :order, :dependent => :destroy #TODO usunąć tą zależność
end

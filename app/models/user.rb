class User < ApplicationRecord
  has_many :projects, dependent: destroy

  validates :name, presence: true
  validates :description, presence: true

  has_one_attached :photo
end

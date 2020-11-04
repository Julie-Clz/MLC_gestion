class Service < ApplicationRecord
  has_many :tasks, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true
end

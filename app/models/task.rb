class Task < ApplicationRecord
  belongs_to :service

  validates :content, presence: :true
end

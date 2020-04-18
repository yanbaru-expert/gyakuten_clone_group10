class Text < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :detail, presence: true
end

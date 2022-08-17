class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy

  define_model_callbacks :destroy_reviews

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

end

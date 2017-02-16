class Word < ApplicationRecord
  belongs_to :category
  
  has_many :answers, dependent: :destroy
  has_many :results

  enum status: {learned: 0, unlearned:1}

  scope :filter_by_category, -> category_id {where "category_id = ?",
    category_id if category_id.present?}
  
end

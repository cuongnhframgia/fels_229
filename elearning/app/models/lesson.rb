class Lesson < ApplicationRecord
  belong_to :user
  belong_to :category
  
  has_many :results, dependent: :destroy
end

class Word < ApplicationRecord
  belong_to :category
  
  has_many :answers, dependent: :destroy 
  has_many :results
end

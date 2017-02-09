class Answer < ApplicationRecord
  belong_to :word
  
  has_many :results
end

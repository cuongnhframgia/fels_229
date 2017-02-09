class Result < ApplicationRecord
  belong_to :lesson
  belong_to :answer
  belong_to :word
end

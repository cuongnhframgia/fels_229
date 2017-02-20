class Word < ApplicationRecord
  belongs_to :category
  
  has_many :answers, dependent: :destroy 
  has_many :results

  accepts_nested_attributes_for :answers,
    reject_if: lambda {|attributes| attributes[:content].blank?}

  scope :pages_sort, -> {order created_at: :desc}
  
  validates :content, presence: true, uniqueness: {case_sensitive: false}
  validate :valid_answer_numbers
  validate :check_correct_answer

  private
  def valid_answer_numbers
    errors.add :answer,
      I18n.t("num_answers") if  answers.size < Settings.min_num_answer
  end

  def check_correct_answer
    correct_answer = answers.select {|answers| answers.is_correct?}
    errors.add :correct_answer,
      I18n.t("need_avaliable") if correct_answer.empty?
    errors.add :correct_answer,
      I18n.t("no_more_than_one") if correct_answer.size > Settings.max_correct_answer
  end
end

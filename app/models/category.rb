class Category < ActiveRecord::Base
  has_many :matches
  has_many :questions

  def random_questions
    questions.all.shuffle.take(10)
  end
end

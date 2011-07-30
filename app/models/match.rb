class Match < ActiveRecord::Base
  has_friendly_id :players_name, :use_slug => true
  belongs_to :player1, :class_name => 'User'
  belongs_to :player2, :class_name => 'User'
  belongs_to :user
  belongs_to :category

  def players_name
    "#{player1.name}-vs-#{player2.name}"
  end

  def questions
    Question.find(self.question_ids.split(","))
  end
end
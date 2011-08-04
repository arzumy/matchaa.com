class Match < ActiveRecord::Base
  has_friendly_id :players_name, :use_slug => true
  belongs_to :player1, :class_name => 'User'
  belongs_to :player2, :class_name => 'User'
  belongs_to :user
  belongs_to :category
  has_many :answers
  scope :pending, where(:status => 'pending')
  scope :completed, where(:status => 'completed')

  before_create :set_tokens

  def players_name
    name
  end

  def name
    "#{player1.name} vs #{player2.name}"
  end

  def questions
    Question.find(self.question_ids.split(","))
  end

  def player1_answers
    Hash[*self.answers.where(user_id: self.player1.id).collect {|q| [q.question_id, q.body]}.flatten]
  end

  def player2_answers
    Hash[*self.answers.where(user_id: self.player2.id).collect {|q| [q.question_id, q.body]}.flatten]
  end

  def pending?
    self.status == 'pending'
  end

  def pending!
    self.update_attributes(status: 'pending')
  end

  def completed?
    self.status == 'completed'
  end

  def completed!
    self.update_attributes(status: 'completed')
  end

  def new?
    self.status == 'new'
  end

  def send_invites!
    self.pending!
    Mailer.invite(self, self.player1, self.token1).deliver
    Mailer.invite(self, self.player2, self.token2).deliver
  end

  def set_tokens
    self.token1 = ActiveSupport::SecureRandom.urlsafe_base64
    self.token2 = ActiveSupport::SecureRandom.urlsafe_base64
  end
end

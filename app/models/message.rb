class Message
  include ActiveModel::Model
  attr_accessor :header, :body, :from
  validates :header, presence: true
  validates :body, presence: true
  validates :from, presence: true, format: { /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }

  def send

  end
  
end
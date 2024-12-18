class Message < ApplicationRecord
  belongs_to :t_thread
  belongs_to :user
  validates :content, presence: true
end

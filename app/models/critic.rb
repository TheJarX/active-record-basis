class Critic < ApplicationRecord
  validates :game, presence: true
  validates :body, :title, presence: true, message: 'Please,write something!'
  validates :username, presence: true, length: { in: (2..12)}, format: { with: /\w+/ }
end
class User < ApplicationRecord
    has_many :guesses
    has_one :winner
  end
# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy
end

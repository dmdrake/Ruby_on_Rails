class User < ApplicationRecord
  acts_as_authentic

  has_many :rides
end

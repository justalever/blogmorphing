class User < ApplicationRecord
  has_many :posts
  broadcasts_refreshes
end

class Post < ApplicationRecord
  belongs_to :user, touch: true
  broadcasts_refreshes
end

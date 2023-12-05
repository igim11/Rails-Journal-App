class Category < ApplicationRecord
    has_many :tasks
    #belongs_to :user

    validates :title, presence: true
              #:user_id, presence: true
end

class Task < ApplicationRecord
    belongs_to :category
  
    validates :description, presence: true
    validates :due_date, presence: true
    validates :category_id, presence: true
  end
  
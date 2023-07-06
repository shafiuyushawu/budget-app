class Category < ApplicationRecord
  belongs_to :user
  has_many :group_categories
  has_many :groups
  
    validates :name, presence: true
    validates :amount, presence: true
end

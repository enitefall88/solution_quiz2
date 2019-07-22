class Idea < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    
    
    validates(:title, presence: true, uniqueness: true, case_sensitive: false)
    validates(:description, presence: true, length: { minimum: 10 })
end

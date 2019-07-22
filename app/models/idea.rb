class Idea < ApplicationRecord
    belongs_to :user
    
    validates(:title, presence: true, uniqueness: true, case_sensitive: false)
    validates(:description, presence: true, length: { minimum: 10 })
end

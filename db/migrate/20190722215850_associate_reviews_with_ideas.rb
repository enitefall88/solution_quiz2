class AssociateReviewsWithIdeas < ActiveRecord::Migration[5.2]
  def change
    
      add_reference :reviews, :idea, foreign_key: true

  end
end


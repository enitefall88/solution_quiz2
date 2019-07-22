require 'rails_helper'

RSpec.describe Idea, type: :model do
  def idea
    @idea ||= Idea.new(
      title: 'Awesome Article',
      description: 'This is just the best article.'
    )
  end

  describe "#validates" do
    it "has a title" do
      i = idea
      i.title = nil
      i.valid?
      expect(i.errors).to have_key(:title)
    end

    it("requires a title") do
      # Given
      # One job post in the db and an instance of
      # JobPost with the same title.
      persisted_i = FactoryBot.create(:idea)
      i = Idea.new title: persisted_i.title
      # When
      # Validations are triggered
      i.valid?
      # Then
      # We get an error on the title
      expect(i.errors.messages).to(have_key(:title))
      expect(i.errors.messages[:title]).to(include("has already been taken"))
    end
  end
end

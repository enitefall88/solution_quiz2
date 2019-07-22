FactoryBot.define do
  # FactoryBot.attributes_for(:job_post)
  # Returns a plain hash of the paraemters required
  # to create a JobPost

  # FactoryBot.build(:job_post)
  # Returns a new unpersisted instance of a JobPost
  # (using the factory)

  # FactoryBot.create(:job_post)
  # Returns a persisted instance of JobPost (using
  # the factory)

  # All your factories must always generate valid
  # instances of your data. ALWAYS!
  factory :idea do
    title { Faker::Idea.title }
    description { Faker::Idea.description }
       # The line below will create a user (using the
    # its factory) before creating a job_post. This
    # is necessary to pass the validation added by
    # 'belongs_to :user'
 
    # If the factory has the same name as the association
    # You can shorten this to:
    # user
  end
end


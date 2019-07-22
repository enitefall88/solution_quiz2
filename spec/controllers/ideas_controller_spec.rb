require 'rails_helper'

RSpec.describe IdeasController, type: :controller do
    describe '#new' do
        context 'without signed in user' do
        it 'redirects the user to sessions#new' do
            get :new
            expect(response).to(render_template(:new))
        end

     end
    end
end

require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

  it 'handles a missing project correctly' do
    error_message = 'The project you were looking for could not be found.'
    get :show, id: 'fake-id'

    expect(response).to redirect_to(projects_path)

    expect(flash[:alert]).to eq error_message
  end
end

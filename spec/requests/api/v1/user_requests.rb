require 'rails_helper'
RSpec.describe 'user request' do
  it 'returns index of all users' do
    create_list(:user, 5)

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }

    get 'api/v1/users', headers: headers

    users= JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(response.status).to eq(200)
    
  end
end

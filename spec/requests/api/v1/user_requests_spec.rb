require 'rails_helper'
RSpec.describe 'user request' do
  it 'returns index of all users' do
    create_list(:user, 5)

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }

    get '/api/v1/users', headers: headers

    users = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(users).to have_key(:data)
    expect(users[:data].count).to eq(5)
    expect(users[:data][0]).to have_key(:type)
    expect(users[:data][0]).to have_key(:attributes)
    expect(users[:data][0][:attributes]).to have_key(:first_name)
    expect(users[:data][0][:attributes]).to have_key(:last_name)
    expect(users[:data][0][:attributes]).to have_key(:phone_number)
    expect(users[:data][0][:attributes]).to have_key(:email)
  end
end
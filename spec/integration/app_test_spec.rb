require 'spec_helper'
require 'rack/test'
require_relative '../../app'

RSpec.describe Application do 
include Rack::Test::Methods

let(:app) { Application.new }

context "GET /hello?" do
  it 'returns Hello Tom!' do 

    response = get('/hello?name=Tom')
    expect(response.status).to eq(200)
    expect(response.body).to eq('Hello Tom!')
  end
  it 'returns Hello Chants!' do

    response = get('/hello?name=Chants')
    expect(response.status).to eq(200)
    expect(response.body).to eq('Hello Chants!')
  end 
end 
end 
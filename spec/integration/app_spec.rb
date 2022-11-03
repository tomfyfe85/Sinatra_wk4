require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

context 'GET /tasks/new' do  
  it 'should return the html form to create a new task' do 
    response = get('/tasks/new')

    expect(response.status).to eq(200)
    expect(response.body).to include('<form method="POST" action="/tasks">')
    expect(response.body).to include('<input type="text"name="task_name" />')
  end 


context 'POST /tasks' do 
  it "should create task and return confirmation" do 
    response = post('/tasks', task_name: 'Buy milk')

    expect(response.status).to eq(200)
    expect(response.body).to include('<h1>You saved task: Buy milk</h1>')
  end   

  it 'it should create task and return confirmation page with a differnt name' do
  response = post('/tasks', task_name: 'Buy shoes')

  expect(response.status).to eq(200)
  expect(response.body).to include('<h1>You saved task: Buy shoes</h1>')
  end   
end 

  # context "GET /names" do
  #   it 'returns 200 OK' do
  #     # Assuming the post with id 1 exists.
  #     response = get('/names', name: 'Julia, Mary, Karim')

  #     expect(response.status).to eq(200)
  #      expect(response.body).to eq('Julia, Mary, Karim')
  #   end

  #   it 'returns hello in html'do 
  #     response = get('/else')
  #     expect(response.body).to include('<h1>Hello!</h1>')
  #   end 



  # #   it 'returns 404 Not Found' do
  # #     response = get('/posts?id=276278')

  # #     expect(response.status).to eq(404)
  # #     # expect(response.body).to eq(expected_response)
  # #   end
  # # end
  # end
end 
end 
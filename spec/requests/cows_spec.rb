require 'rails_helper'

RSpec.describe "Cows", type: :request do
  describe "GET /index" do
     it "gets a list of cows" do
      Cow.create(
      name: "Ottis", 
      breed: "Belgian Blue",
      age: 12,
      hobby: "Lift weights",
      image: "https://livestockmiddleeast.com/wp-content/uploads/2019/06/KUBITUS-DE-BRAY-455716400-6047-e1561536471567.jpg"
    )

     get '/cows'

      cow = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cow.length).to eq 1
    end

    describe "POST /create" do
      it "creates a cow" do
        
        cow_params = {
          cow: {
            name: "Lulu", 
            breed: "Red Angus",
            age: 10,
            hobby: "Runaway during sunset",
            image: "https://images.unsplash.com/photo-1675478629496-aa9f7a99093a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmVkJTIwYW5ndXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60"
          }
        }
    
        post '/cows', params: cow_params
    
        expect(response).to have_http_status(200)
    
        cow = Cow.first

        expect(cow.name).to eq 'Lulu'
      end
    end

  end
end

require 'rails_helper'

RSpec.describe Cow, type: :model do
  it "should validate name" do
    cow = Cow.create( 
    breed: "Belgian Blue",
    age: 12,
    hobby: "Lift weights",
    image: "https://livestockmiddleeast.com/wp-content/uploads/2019/06/KUBITUS-DE-BRAY-455716400-6047-e1561536471567.jpg"
    )
    expect(cow.errors[:name]).to_not be_empty
  end

  it "must have a hobby of 10 characters" do
    cow = Cow.create( 
    name: "Ottis",  
    breed: "Belgian Blue",
    age: 12,
    image: "https://livestockmiddleeast.com/wp-content/uploads/2019/06/KUBITUS-DE-BRAY-455716400-6047-e1561536471567.jpg"
    )
    expect(cow.errors[:hobby]).to_not be_empty
  end

  it "must have an age" do
    cow = Cow.create( 
    name: "Ottis",  
    breed: "Belgian Blue",
    hobby: "Lift weights",
    image: "https://livestockmiddleeast.com/wp-content/uploads/2019/06/KUBITUS-DE-BRAY-455716400-6047-e1561536471567.jpg"
    )
    expect(cow.errors[:age]).to_not be_empty
  end

  it "must have an image" do
    cow = Cow.create( 
    name: "Ottis",  
    breed: "Belgian Blue",
    age: 12,
    hobby: "Lift weights"
    )
    expect(cow.errors[:image]).to_not be_empty
  end

  it "must have a breed" do
    cow = Cow.create( 
    name: "Ottis",  
    age: 12,
    hobby: "Lift weights",
    image: "https://livestockmiddleeast.com/wp-content/uploads/2019/06/KUBITUS-DE-BRAY-455716400-6047-e1561536471567.jpg"
    )
    expect(cow.errors[:breed]).to_not be_empty
  end
end

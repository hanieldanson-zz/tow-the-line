require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :make => "Make",
      :model => "Model",
      :year => 1,
      :color => "Color",
      :nickname => "Nickname",
      :license_plate_number => "License Plate Number",
      :longitude => 1.5,
      :latitude => 1.5,
      :user => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/License Plate Number/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end

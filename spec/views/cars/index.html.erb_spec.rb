require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :make => "Make",
        :model => "Model",
        :year => 1,
        :color => "Color",
        :nickname => "Nickname",
        :license_plate_number => "License Plate Number",
        :longitude => 1.5,
        :latitude => 1.5,
        :user => ""
      ),
      Car.create!(
        :make => "Make",
        :model => "Model",
        :year => 1,
        :color => "Color",
        :nickname => "Nickname",
        :license_plate_number => "License Plate Number",
        :longitude => 1.5,
        :latitude => 1.5,
        :user => ""
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "License Plate Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

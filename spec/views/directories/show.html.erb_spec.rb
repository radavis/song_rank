require 'spec_helper'

describe "directories/show" do
  before(:each) do
    @directory = assign(:directory, stub_model(Directory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

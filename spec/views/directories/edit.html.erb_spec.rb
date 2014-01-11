require 'spec_helper'

describe "directories/edit" do
  before(:each) do
    @directory = assign(:directory, stub_model(Directory,
      :name => "MyString"
    ))
  end

  it "renders the edit directory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directory_path(@directory), "post" do
      assert_select "input#directory_name[name=?]", "directory[name]"
    end
  end
end

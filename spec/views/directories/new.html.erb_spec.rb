require 'spec_helper'

describe "directories/new" do
  before(:each) do
    assign(:directory, stub_model(Directory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new directory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", directories_path, "post" do
      assert_select "input#directory_name[name=?]", "directory[name]"
    end
  end
end

require 'spec_helper'

describe "salaries/new.html.erb" do
  before(:each) do
    assign(:salary, stub_model(Salary,
      :fee => 1
    ).as_new_record)
  end

  it "renders new salary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => salaries_path, :method => "post" do
      assert_select "input#salary_fee", :name => "salary[fee]"
    end
  end
end

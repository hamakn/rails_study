require 'spec_helper'

describe "salaries/edit.html.erb" do
  before(:each) do
    @salary = assign(:salary, stub_model(Salary,
      :fee => 1
    ))
  end

  it "renders the edit salary form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => salaries_path(@salary), :method => "post" do
      assert_select "input#salary_fee", :name => "salary[fee]"
    end
  end
end

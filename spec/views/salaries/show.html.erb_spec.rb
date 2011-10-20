require 'spec_helper'

describe "salaries/show.html.erb" do
  before(:each) do
    @salary = assign(:salary, stub_model(Salary,
      :fee => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

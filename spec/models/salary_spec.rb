require 'spec_helper'

describe Salary do
  context "#tax" do
    before do
      @salary = Salary.new(:fee => 600000, :published_at => Time.parse("2011-10-20 00:00:00"))
    end
    it "税金は給料の10%であること" do
      @salary.tax.should equal(60000)
    end
  end
end

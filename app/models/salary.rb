class Salary < ActiveRecord::Base
  def tax
    (fee * 0.1).to_i
  end
end

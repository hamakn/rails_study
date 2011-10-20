class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :fee
      t.datetime :published_at

      t.timestamps
    end
  end
end

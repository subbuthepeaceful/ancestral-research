class CreateCensusReports < ActiveRecord::Migration
  def up
    create_table :census_reports do |t|
      t.integer :state_id, :null => false
      t.integer :year
    end
  end

  def down
    drop_table :census_reports
  end
end

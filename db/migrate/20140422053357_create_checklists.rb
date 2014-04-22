class CreateChecklists < ActiveRecord::Migration
  def up
    create_table :checklists do |t|
      t.string :first_middle_name
      t.string :last_name
      t.integer :birth_year
      t.string :birth_location
      t.string :lived_in
      t.integer :death_year
      t.string :death_location
    end
  end

  def down
    drop_table :checklists
  end
end

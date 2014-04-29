class SimplifyChecklists < ActiveRecord::Migration
  def up
    remove_column :checklists, :first_middle_name
    remove_column :checklists, :last_name
    remove_column :checklists, :birth_location
    remove_column :checklists, :death_location

    add_column :checklists, :name, :string
  end

  def down
  end
end

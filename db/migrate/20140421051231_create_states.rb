class CreateStates < ActiveRecord::Migration
  def up
    create_table :states do |t|
      t.string :name, :null => false
      t.string :code, :null => false
    end
  end

  def down
    drop_table :states
  end
end

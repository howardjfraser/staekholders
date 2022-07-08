class CreateStakeholders < ActiveRecord::Migration[7.0]
  def change
    create_table :stakeholders do |t|
      t.string :name
      t.string :party
      t.string :faction

      t.timestamps
    end
  end
end

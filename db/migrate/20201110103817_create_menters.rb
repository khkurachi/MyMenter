class CreateMenters < ActiveRecord::Migration[6.0]
  def change
    create_table :menters do |t|
      t.string :name
      t.string :job
      t.string :respect
      t.string :norespect
      t.string :influence
      t.text :get
      t.timestamps
    end
  end
end

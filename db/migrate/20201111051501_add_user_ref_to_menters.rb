class AddUserRefToMenters < ActiveRecord::Migration[6.0]
  def change
    add_reference :menters, :user, foreign_key: true
  end
end

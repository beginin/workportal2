class CreateUserlogs < ActiveRecord::Migration
  def change
    create_table :userlogs do |t|
      t.integer :user_id
      t.integer :comp_id
      t.boolean :in

      t.timestamps
    end
  end
end

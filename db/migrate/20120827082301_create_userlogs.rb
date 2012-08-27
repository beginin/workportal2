class CreateUserlogs < ActiveRecord::Migration
  def change
    create_table :userlogs do |t|
      t.string :user
      t.string :comp
      t.boolean :in

      t.timestamps
    end
  end
end

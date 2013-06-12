class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.string :firstname
      t.string :lastname
      t.string :location
      t.string :hobbies
      t.string :otherinfo

      t.timestamps
    end
  end
end

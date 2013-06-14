class CreateGrups < ActiveRecord::Migration
  def change
    create_table :grups do |t|
      t.string :groupname
      t.string :grouptype
      t.text :description

      t.timestamps
    end
  end
end
